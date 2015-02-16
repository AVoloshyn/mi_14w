//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  File Name   :  main.cpp
//  Authors     :  AVoloshyn
//  Date Created:  01.12.2014
//  Description :  This file defines launcherapplication main function
//============================================================================
//============================================================================
//                              INCLUDES
//============================================================================
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>
#include "src/clauncherhandler.h"

#include <log4cplus/logger.h>
#include <log4cplus/configurator.h>
#include <log4cplus/loggingmacros.h>
using namespace log4cplus;

//----------------------------------------------------------------------------
// Launcher Application Main Function
//----------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    PropertyConfigurator::doConfigure(LOG4CPLUS_TEXT("log4cplus.properties"));

    // Create the logger
    Logger logger = Logger::getInstance(LOG4CPLUS_TEXT("filelogger"));

    // Load the properties

    if (logger.isEnabledFor(INFO_LOG_LEVEL))
    {
       LOG4CPLUS_WARN(logger, LOG4CPLUS_TEXT("asd"));
    }

    CLauncherHandler launcherHandler;

    QQmlApplicationEngine engine;
    engine.addImportPath("../");
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

    engine.rootContext()->setContextProperty("launcherApp", &launcherHandler);

    return app.exec();
}
