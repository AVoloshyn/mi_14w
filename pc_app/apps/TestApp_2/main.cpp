#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQuickView>
#include <QQuickItem>

#include <dlt/dlt.h>

DLT_DECLARE_CONTEXT(TestApp_2_Context);

int main(int argc, char *argv[])
{
    DLT_REGISTER_APP("TestApp_2","Test Application for Logging");

    DLT_REGISTER_CONTEXT(TestApp_2_Context,"TES1","Test Context 1 for Logging");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

//    QQuickView view;
//    view.setSource(QUrl(QStringLiteral("qrc:/main.qml")));
//    view.show();

//    QQuickItem *item = view.rootObject()->findChild<QQuickItem *>("TestApp_2_Window");
//    if (item)
//        item->setProperty("color", QColor(Qt::yellow));


    DLT_LOG(TestApp_2_Context,DLT_LOG_ERROR,DLT_INT(5),DLT_STRING("This is a error"));
    DLT_LOG(TestApp_2_Context,DLT_LOG_INFO,DLT_INT(5),DLT_STRING("But this only information"));
    DLT_LOG(TestApp_2_Context,DLT_LOG_DEBUG,DLT_INT(5),DLT_STRING("But this only information"));

    DLT_UNREGISTER_CONTEXT(TestApp_2_Context);

    DLT_UNREGISTER_APP();
    return app.exec();
}
