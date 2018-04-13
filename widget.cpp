#include "widget.h"
#include "ui_widget.h"
#include <QDebug>

Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    webview = new WebViewInQt("https://baidu.com", this);
    webview->move(0, 0);
    webview->

    connect(webview, SIGNAL(signalLoadFinish(const QString&, const QString&)), this,
            SLOT(slotLoadFinished(const QString&, const QString&)));
    connect(webview, SIGNAL(signalLoadError()), this, SLOT(slotLoadError()));
}

Widget::~Widget()
{
    delete ui;
}

void Widget::resizeEvent(QResizeEvent *event)
{
    webview->resize(this->width(), this->height());
    return QWidget::resizeEvent(event);
}

void Widget::slotLoadFinished(const QString &url, const QString &html)
{
    //Do somthing
    qDebug()<<"url:"<<url;
    qDebug()<<"html"<<html;
}

void Widget::slotLoadError()
{
    qDebug()<<"Error!";
}
