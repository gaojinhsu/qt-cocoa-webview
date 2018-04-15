qt-cocoa-webview
================

2011-2014年，我在一家互联网公司做Qt开发。一开始是用Qt开发Windows客户端程序，后来由于业务需要，用Qt开发了Mac客户端。然而在提交到Mac App Store审核的时候，却发现Qt的自带WebView控件因为使用了Apple的私有API而遭拒绝，为了解决这个问题，我花了很长时间去研究，当时用Qt做Mac客户端的人很少（现在也不多），能搜到的资料相当少，后来找到了在Qt工程中混用Cocoa库中的WebView控件的方法，并且终于成功通过审核。我还写了两篇总结性的[文章](https://gaojinhsu.blogspot.jp/)。后来我在逛国外的技术论坛时，看到也有其他人因为用了Qt自带的WebView而无法上架Mac App Store。出于热心，就告诉他这个解决方案，并且写了这个Demo发给他。此工程能保证在Qt5.2下编译通过并正常运行。


From 2011 to 2014, I worked for an internet company as a Qt developer . In the beginning, we used Qt to develop a Windows application. Later, because of business needs, the Mac version was developed. However, when this Mac App was submitted to the review team of the Mac App Store, it was  rejected due to the use of Apple's private APIs in Qt's own `QWebView` control. To solve this problem, It took me a long time to study. You have to know, at that time, there were very few people who used Qt to develop Mac App (not many now). There was very little information that could be found. Finally, I found a way to replace Qt's own `QWebView` with Cocoa's `WebView` control  and passed the review. I also wrote two concluding [articles](https://gaojinhsu.blogspot.jp/) in Chinese then. Occasionally, I found some other people were asking for help on technology forums because of the same problem . Out of enthusiasm, I told him this solution and wrote this demo to him.(This project is guaranteed to be built and run successfully on Qt5.2).
