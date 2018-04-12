#-------------------------------------------------
#
# Project created by QtCreator 2014-05-23T11:20:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = QtWithCoCoaWebView
TEMPLATE = app


LIBS += -framework Cocoa -framework WebKit

SOURCES += main.cpp\
        widget.cpp

HEADERS  += widget.h \
    WebView/customwebview.h \
    WebView/webviewinqt.h

FORMS    += widget.ui

OBJECTIVE_SOURCES += \
    WebView/customwebview.mm \
    WebView/webviewinqt.mm
