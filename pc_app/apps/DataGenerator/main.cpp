//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  Application :  DataGenerator
//  File Name   :  main.cpp
//  Authors     :  AVoloshyn
//  Date Created:  01.12.2014
//  Description :  This file defines launcherapplication main function
//============================================================================
//============================================================================
//                              INCLUDES
//============================================================================
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "src/cbuttonhandler.h"

//----------------------------------------------------------------------------
// Data Generator Application Main Function
//----------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    CButtonHandler buttonHandler;

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    engine.rootContext()->setContextProperty("buttonHandler", &buttonHandler);
    return app.exec();
}
