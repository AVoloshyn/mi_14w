//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  File Name   :  CLauncherHandler.cpp
//  Authors     :  AVoloshyn
//  Date Created:  09.01.2015
//  Description :  This file defines launcher handler class implementation,
//              :  which will be responsible for launcher buttons handling
//============================================================================
//============================================================================
//                              INCLUDES
//============================================================================
#include "clauncherhandler.h"
#include <QDebug>
#include <QThread>
#include <QMutex>

//============================================================================
//                         CLASS IMPLEMENTATION
//============================================================================
//----------------------------------------------------------------------------
// Method    : CLauncherHandler::CLauncherHandler()
//----------------------------------------------------------------------------
CLauncherHandler::CLauncherHandler(QObject *parent) : QObject(parent)
{
}

//----------------------------------------------------------------------------
// Method    : CLauncherHandler::~CLauncherHandler()
//----------------------------------------------------------------------------
CLauncherHandler::~CLauncherHandler()
{
}

//----------------------------------------------------------------------------
// Method    : CLauncherHandler::onButtonClicked()
//----------------------------------------------------------------------------
void CLauncherHandler::onButtonClicked(QString button)
{
    qDebug()<<"CLauncherHandler: button clicked: "<<button<<endl;
}

