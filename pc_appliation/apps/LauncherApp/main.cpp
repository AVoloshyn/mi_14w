#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qDebug()<<"LauncherApp: app starting ...";

    QQmlApplicationEngine engine;
    engine.addImportPath("D:/MedInn/mi_14w/pc_appliation/apps"); // !!! TODO Think about this problem
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
