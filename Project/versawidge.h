#ifndef VERSA_WIDGET_H
#define VERSA_WIDGET_H

#include <QWidget>
#include <QMenuBar>
#include <QLabel>
#include <QMenuBar>
#include <QPushButton>
#include <QMouseEvent>
#include <QDebug>
#include <QPainter>

class QtMaterialAppBar;

class VersaWidget : public QWidget
{
Q_OBJECT

public:
	VersaWidget(QWidget *parent = nullptr);
	~VersaWidget();
	
protected:
	bool eventFilter(QObject *watched, QEvent *event);
private:
	QtMaterialAppBar *titleBar = nullptr;
	int padding=0;                  //边距
	bool moveEnable;                //可移动
	bool resizeEnable;              //可拉伸
	QWidget *frameLessWidget;       //无边框窗体
	
	bool pressed;                   //鼠标按下
	bool pressedLeft;               //鼠标按下左侧
	bool pressedRight;              //鼠标按下右侧
	bool pressedTop;                //鼠标按下上侧
	bool pressedBottom;             //鼠标按下下侧
	bool pressedLeftTop;            //鼠标按下左上侧
	bool pressedRightTop;           //鼠标按下右上侧
	bool pressedLeftBottom;         //鼠标按下左下侧
	bool pressedRightBottom;        //鼠标按下右下侧
	
	int rectX, rectY, rectW, rectH; //窗体坐标+宽高
	int lastX, lastY, lastW, lastH; //窗体坐标+宽高
	QPoint lastPos;                 //鼠标按下处坐标
	
	QRect rectLeft;                 //左侧区域
	QRect rectRight;                //右侧区域
	QRect rectTop;                  //上侧区域
	QRect rectBottom;               //下侧区域
	QRect rectLeftTop;              //左上侧区域
	QRect rectRightTop;             //右上侧区域
	QRect rectLeftBottom;           //左下侧区域
	QRect rectRightBottom;          //右下侧区域

// public Q_SLOTS:
	// //设置边距
	// void setPadding(int padding);
	// //设置是否可拖动+拉伸
	// void setMoveEnable(bool moveEnable);
	// void setResizeEnable(bool resizeEnable);
	//设置目标无边框的窗体
	void setWidget(QWidget *widget);
	
};

#endif // WIDGET_H
