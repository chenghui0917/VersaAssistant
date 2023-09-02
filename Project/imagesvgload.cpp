#include "imagesvgload.h"
#include <QPainter>
#include <QIcon>

QIcon ImageSvgLoad(const QString &File, QString color)
{
    QIcon imgIcon(File);
    QPixmap pixmap(imgIcon.pixmap(24));
    QPainter painter(&pixmap);
    painter.setCompositionMode(QPainter::CompositionMode_SourceIn);
    painter.fillRect(pixmap.rect(), QColor(color));
    painter.end();
    return QIcon(pixmap);
}

QIcon ImageSvgLoad(const QString &File, QString color, int size)
{
    QIcon imgIcon(File);
    QPixmap pixmap(imgIcon.pixmap(size));
    QPainter painter(&pixmap);
    painter.setCompositionMode(QPainter::CompositionMode_SourceIn);
    painter.fillRect(pixmap.rect(), QColor(color));
    painter.end();
    return QIcon(pixmap);
}
