//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  Application :  LauncherApp
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

#ifdef _LINUX_
    #include <log4cplus/logger.h>
    #include <log4cplus/configurator.h>
    #include <log4cplus/loggingmacros.h>
    using namespace log4cplus;
#endif

//----------------------------------------------------------------------------
// Launcher Application Main Function
//----------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

#ifdef _LINUX_
    PropertyConfigurator::doConfigure(LOG4CPLUS_TEXT("log4cplus.properties"));

    // Create the logger
    Logger logger = Logger::getInstance(LOG4CPLUS_TEXT("filelogger"));

    // Load the properties

    if (logger.isEnabledFor(INFO_LOG_LEVEL))
    {
       LOG4CPLUS_WARN(logger, LOG4CPLUS_TEXT("asd"));
    }
#endif
    CLauncherHandler launcherHandler;

    QQmlApplicationEngine engine;
    engine.addImportPath("../");
    //engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    engine.load(QUrl(QStringLiteral("qml/main.qml")));

    engine.rootContext()->setContextProperty("launcherApp", &launcherHandler);

    return app.exec();
}
