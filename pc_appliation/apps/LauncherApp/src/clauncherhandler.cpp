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
int CLauncherHandler::j = 1;

//----------------------------------------------------------------------------
// Method    : CLauncherHandler::CLauncherHandler()
//----------------------------------------------------------------------------
CLauncherHandler::CLauncherHandler(QObject *parent) : QObject(parent)
                                                    , i(5)
{
}

//----------------------------------------------------------------------------
// Method    : CLauncherHandler::~CLauncherHandler()
//----------------------------------------------------------------------------
CLauncherHandler::~CLauncherHandler()
{
}

void fun_1()
{
    static int i = 0;
    i++;
    qDebug()<<i;
}

//----------------------------------------------------------------------------
// Method    : CLauncherHandler::onButtonClicked()
//----------------------------------------------------------------------------
void CLauncherHandler::onButtonClicked(QString button)
{
    QThread *thread_1 = new QThread;
    QThread *thread_2 = new QThread;

    fun_1();
    fun_1();
    fun_1();

    //qDebug()<<"CLauncherHandler: button clicked: "<<button<<endl;
}

