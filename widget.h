#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include "./WebView/webviewinqt.h"

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT

public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();

protected:
    void resizeEvent(QResizeEvent * event);

private slots:
    void slotLoadFinished(const QString &url, const QString &html);
    void slotLoadError();

private:
    Ui::Widget *ui;
    WebViewInQt *webview;
};

#endif // WIDGET_H
