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
//#include <log4cplus/configurator.h>
//#include <log4cplus/logger.h>
//#include <log4cplus/loggingmacros.h>
//using namespace log4cplus;

void startLogger()
{
    //Qt5DebugAppender::registerAppender();

    // Load the properties
//    PropertyConfigurator::doConfigure(LOG4CPLUS_TEXT("launcherLog.properties"));

    // Create the logger
//    const Logger logger = Logger::getInstance(LOG4CPLUS_TEXT("main"));

    // Log with INFO level
//    if (logger.isEnabledFor(INFO_LOG_LEVEL))
//    {
//        LOG4CPLUS_INFO(logger, "Application startup");
//    }
}

//----------------------------------------------------------------------------
// Launcher Application Main Function
//----------------------------------------------------------------------------
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qDebug()<<"LauncherApp: app starting ...";

 //   startLogger();
    CLauncherHandler launcherHandler;

    QQmlApplicationEngine engine;
    engine.addImportPath("../");
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));

    engine.rootContext()->setContextProperty("launcherApp", &launcherHandler);

    return app.exec();
}
