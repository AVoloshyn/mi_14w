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
#include "src/cdgcontroller.h"

//----------------------------------------------------------------------------
// Data Generator Application Main Function
//----------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    CDGController controller(engine.rootContext());

    engine.addImportPath("../");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
