#include "versawidge.h"
#include <QVBoxLayout>
#include <QLineEdit>
#include <QToolButton>
#include <QStyle>
#include <QFontDialog>
#include <QFont>
#include <qtmaterialappbar.h>
#include <qtmaterialiconbutton.h>
#include <lib/qtmaterialtheme.h>
#include <QDebug>
#include <QMainWindow>
#include <QDockWidget>
#include <DockManager.h>
// #include "qadvancedDocking"
VersaWidget::VersaWidget(QWidget *parent) : QWidget(parent)
{
	// this->setWindowFlags(Qt::CustomizeWindowHint);
	padding = 8;
	moveEnable = false;
	resizeEnable = true;
	frameLessWidget = NULL;

	pressed = false;
	pressedLeft = false;
	pressedRight = false;
	pressedTop = false;
	pressedBottom = false;
	pressedLeftTop = false;
	pressedRightTop = false;
	pressedLeftBottom = false;
	pressedRightBottom = false;

	// 如果父类是窗体则直接设置
	if (parent->isWidgetType())
	{
		setWidget((QWidget *)parent);
	}

	this->setStyleSheet("QWidget {border: none;}");

	QGridLayout *gridLayout = new QGridLayout(this);
	gridLayout->setSpacing(0);
	gridLayout->setContentsMargins(0, 0, 0, 0);

	titleBar = new QtMaterialAppBar(48, 32, parent);
	gridLayout->addWidget(titleBar, 0, 0, 1, 1);

	// QWidget *pQWidget = new QWidget(this);
	// pQWidget->setStyleSheet("background-color:white;");
	// pQWidget->setAutoFillBackground(true);
	
	ads::CDockManager * dockManager = new ads::CDockManager(this);
	gridLayout->addWidget(dockManager, 2, 0, 1, 1);
	
	// m_pDockManager = new ads::CDockManager(this);
	
	QLabel* l = new QLabel();
	l->setWordWrap(true);
	l->setAlignment(Qt::AlignTop | Qt::AlignLeft);
	l->setText("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ");
	
	
	ads::CDockWidget* DockWidget = new ads::CDockWidget("Label 1");
	DockWidget->setWidget(l);
	
	QLabel* ll = new QLabel();
	ll->setWordWrap(true);
	ll->setAlignment(Qt::AlignTop | Qt::AlignLeft);
	ll->setText("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ");
	
	
	ads::CDockWidget* DockWidget1 = new ads::CDockWidget("Label 2");
	DockWidget1->setWidget(ll);
	
	
	// ui->menubar->addAction(DockWidget->toggleViewAction());
	// ui->menubar->addAction(DockWidget1->toggleViewAction());
	
	dockManager->addDockWidget(ads::TopDockWidgetArea, DockWidget);
	dockManager->addDockWidget(ads::TopDockWidgetArea, DockWidget1);
	
	this->setLayout(gridLayout);
	setMinimumSize(400, 400);
}

VersaWidget::~VersaWidget()
{
}

void VersaWidget::setWidget(QWidget *widget)
{
	if (this->frameLessWidget == NULL)
	{
		this->frameLessWidget = widget;
		// 设置鼠标追踪为真
		this->frameLessWidget->setMouseTracking(true);
		// 绑定事件过滤器
		this->frameLessWidget->installEventFilter(this);
		// 设置悬停为真,必须设置这个,
		// 当父窗体里边还有子窗体全部遮挡了识别不到MouseMove,需要识别HoverMove
		this->frameLessWidget->setAttribute(Qt::WA_Hover, true);
	}
}

bool VersaWidget::eventFilter(QObject *watched, QEvent *event)
{
	if (frameLessWidget != NULL && watched == frameLessWidget)
	{
		if (event->type() == QEvent::Resize)
		{
			// 重新计算八个描点的区域
			int width = frameLessWidget->width();
			int height = frameLessWidget->height();
			// 左侧描点区域
			rectLeft = QRect(0, padding, padding, height - padding * 2);
			// 上侧描点区域
			rectTop = QRect(padding, 0, width - padding * 2, padding);
			// 右侧描点区域
			rectRight = QRect(width - padding, padding, padding, height - padding * 2);
			// 下侧描点区域
			rectBottom = QRect(padding, height - padding, width - padding * 2, padding);
			// 左上角描点区域
			rectLeftTop = QRect(0, 0, padding, padding);
			// 右上角描点区域
			rectRightTop = QRect(width - padding, 0, padding, padding);
			// 左下角描点区域
			rectLeftBottom = QRect(0, height - padding, padding, padding);
			// 右下角描点区域
			rectRightBottom = QRect(width - padding, height - padding, padding, padding);
		}
		else if (event->type() == QEvent::HoverMove)
		{
			// 设置对应鼠标形状,这个必须放在这里而不是下面,因为可以在鼠标没有按下的时候识别
			QHoverEvent *hoverEvent = (QHoverEvent *)event;
			QPoint point = hoverEvent->pos();
			if (resizeEnable)
			{
				if (rectLeft.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeHorCursor);
				}
				else if (rectRight.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeHorCursor);
				}
				else if (rectTop.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeVerCursor);
				}
				else if (rectBottom.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeVerCursor);
				}
				else if (rectLeftTop.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeFDiagCursor);
				}
				else if (rectRightTop.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeBDiagCursor);
				}
				else if (rectLeftBottom.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeBDiagCursor);
				}
				else if (rectRightBottom.contains(point))
				{
					frameLessWidget->setCursor(Qt::SizeFDiagCursor);
				}
				else
				{
					frameLessWidget->setCursor(Qt::ArrowCursor);
				}
			}

			// 根据当前鼠标位置,计算XY轴移动了多少
			int offsetX = point.x() - lastPos.x();
			int offsetY = point.y() - lastPos.y();

			// 根据按下处的位置判断是否是移动控件还是拉伸控件
			if (moveEnable)
			{
				if (pressed)
				{
					frameLessWidget->move(frameLessWidget->x() + offsetX, frameLessWidget->y() + offsetY);
				}
			}

			if (resizeEnable)
			{
				if (pressedLeft)
				{
					int resizeW = frameLessWidget->width() - offsetX;
					if (frameLessWidget->minimumWidth() <= resizeW)
					{
						frameLessWidget->setGeometry(frameLessWidget->x() + offsetX, rectY, resizeW, rectH);
						frameLessWidget->show();
					}
				}
				else if (pressedRight)
				{
					frameLessWidget->setGeometry(rectX, rectY, rectW + offsetX, rectH);
				}
				else if (pressedTop)
				{
					int resizeH = frameLessWidget->height() - offsetY;
					if (frameLessWidget->minimumHeight() <= resizeH)
					{
						frameLessWidget->setGeometry(rectX, frameLessWidget->y() + offsetY, rectW, resizeH);
					}
				}
				else if (pressedBottom)
				{
					frameLessWidget->setGeometry(rectX, rectY, rectW, rectH + offsetY);
				}
				else if (pressedLeftTop)
				{
					int resizeW = frameLessWidget->width() - offsetX;
					int resizeH = frameLessWidget->height() - offsetY;
					if (frameLessWidget->minimumWidth() <= resizeW)
					{
						frameLessWidget->setGeometry(frameLessWidget->x() + offsetX, frameLessWidget->y(), resizeW, resizeH);
					}
					if (frameLessWidget->minimumHeight() <= resizeH)
					{
						frameLessWidget->setGeometry(frameLessWidget->x(), frameLessWidget->y() + offsetY, resizeW, resizeH);
					}
				}
				else if (pressedRightTop)
				{
					int resizeW = rectW + offsetX;
					int resizeH = frameLessWidget->height() - offsetY;
					if (frameLessWidget->minimumHeight() <= resizeH)
					{
						frameLessWidget->setGeometry(frameLessWidget->x(), frameLessWidget->y() + offsetY, resizeW, resizeH);
					}
				}
				else if (pressedLeftBottom)
				{
					int resizeW = frameLessWidget->width() - offsetX;
					int resizeH = rectH + offsetY;
					if (frameLessWidget->minimumWidth() <= resizeW)
					{
						frameLessWidget->setGeometry(frameLessWidget->x() + offsetX, frameLessWidget->y(), resizeW, resizeH);
					}
					if (frameLessWidget->minimumHeight() <= resizeH)
					{
						frameLessWidget->setGeometry(frameLessWidget->x(), frameLessWidget->y(), resizeW, resizeH);
					}
				}
				else if (pressedRightBottom)
				{
					int resizeW = rectW + offsetX;
					int resizeH = rectH + offsetY;
					frameLessWidget->setGeometry(frameLessWidget->x(), frameLessWidget->y(), resizeW, resizeH);
				}
			}
		}
		else if (event->type() == QEvent::MouseButtonPress)
		{
			// 记住当前控件坐标和宽高以及鼠标按下的坐标
			QMouseEvent *mouseEvent = (QMouseEvent *)event;
			rectX = frameLessWidget->x();
			rectY = frameLessWidget->y();
			rectW = frameLessWidget->width();
			rectH = frameLessWidget->height();
			lastPos = mouseEvent->pos();

			// 判断按下的手柄的区域位置
			if (rectLeft.contains(lastPos))
			{
				pressedLeft = true;
			}
			else if (rectRight.contains(lastPos))
			{
				pressedRight = true;
			}
			else if (rectTop.contains(lastPos))
			{
				pressedTop = true;
			}
			else if (rectBottom.contains(lastPos))
			{
				pressedBottom = true;
			}
			else if (rectLeftTop.contains(lastPos))
			{
				pressedLeftTop = true;
			}
			else if (rectRightTop.contains(lastPos))
			{
				pressedRightTop = true;
			}
			else if (rectLeftBottom.contains(lastPos))
			{
				pressedLeftBottom = true;
			}
			else if (rectRightBottom.contains(lastPos))
			{
				pressedRightBottom = true;
			}
			else
			{
				pressed = true;
			}
		}
		else if (event->type() == QEvent::MouseButtonRelease)
		{
			// 恢复所有
			pressed = false;
			pressedLeft = false;
			pressedRight = false;
			pressedTop = false;
			pressedBottom = false;
			pressedLeftTop = false;
			pressedRightTop = false;
			pressedLeftBottom = false;
			pressedRightBottom = false;
			frameLessWidget->setCursor(Qt::ArrowCursor);
		}
	}
	return QObject::eventFilter(watched, event);
}
