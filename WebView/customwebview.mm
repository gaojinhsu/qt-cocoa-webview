#import "customwebview.h"

@implementation CustomWebView

-(id) initWithObjects:(NSRect)frameRect frameName:(NSString *)frameName groupName:(NSString *)groupName target:(QPointer<WebViewInQt>) target;
{
    if (self = [super initWithFrame:frameRect frameName:frameName groupName:groupName])
    {
        [self setResourceLoadDelegate:self];
        [self setFrameLoadDelegate:self];

        pTarget = target;
    }
    return self;
}

- (void)webView:(WebView *)sender didStartProvisionalLoadForFrame:(WebFrame *)frame
{

}

- (void)webView:(WebView *)sender resource:(id)identifier didFailLoadingWithError:(NSError *)error fromDataSource:(WebDataSource *)dataSource
{
    if(pTarget)
    {
       pTarget->loadError();
    }
}


- (void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    @autoreleasepool{
        NSString *strCurr = [[[[frame dataSource]request]URL]absoluteString];
        QString strUrl = QString::fromNSString(strCurr);

        WebDataSource *source = [frame dataSource];
        NSData *data = [source data];
        NSString *nsstr = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        QString strHtml = QString::fromNSString(nsstr);


        if(pTarget)
        {
            pTarget->loadFinish(strUrl, strHtml);
        }
    }
}

- (void)webView:(WebView *)sender didCommitLoadForFrame:(WebFrame *)frame
{
    @autoreleasepool{

        NSString *strCurr = [[[[frame dataSource]request]URL]absoluteString];
        QString str = QString::fromNSString(strCurr);

        if(pTarget)
        {
            pTarget->urlChanged(str);
        }
    }
}

@end

