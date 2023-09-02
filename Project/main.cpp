#include "versawidge.h"
#include <QApplication>
#include <QVBoxLayout>
int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    QWidget w;
	w.setWindowFlags(Qt::FramelessWindowHint);
	w.setAttribute(Qt::WA_TranslucentBackground);
	w.setStyleSheet("QWidget {border: none;}");
	QVBoxLayout *pQvBoxLayout = new QVBoxLayout(&w);
	pQvBoxLayout->setContentsMargins(0, 0, 0, 0);
	VersaWidget *pWidge = new VersaWidget(&w);
	pQvBoxLayout->addWidget(pWidge);
	w.setLayout(pQvBoxLayout);
    w.show();
    return a.exec();
}
