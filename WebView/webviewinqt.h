#ifndef WEBVIEWINQT_H
#define WEBVIEWINQT_H

#include <QMacCocoaViewContainer>

class WebViewInQt : public QMacCocoaViewContainer
{
    Q_OBJECT
public:
    explicit WebViewInQt(QWidget *parent = 0);
    explicit WebViewInQt(QString loadUrl, QWidget *parent = 0);

    void loadFinish(const QString &strUrl, const QString &strHtml);
    void loadError();
    void urlChanged(const QString &strUrl);
    void loadRequest(const QString &loadUrl);

signals:
    void signalLoadFinish(const QString &strUrl, const QString &strHtml);
    void signalLoadError();
    void signalUrlChanged(const QString &strUrl);
};

#endif // WEBVIEWINQT_H
