//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  Application :  DataGenerator
//  File Name   :  CButtonHandler.cpp
//  Authors     :  AVoloshyn
//  Date Created:  09.01.2015
//  Description :  This file defines button handler class implementation,
//              :  which will be responsible for data generator buttons handling
//============================================================================
//============================================================================
//                              INCLUDES
//============================================================================
#include "cbuttonhandler.h"
#include <QDebug>
//----------------------------------------------------------------------------
// Method    : CButtonHandler::CButtonHandler()
//----------------------------------------------------------------------------
CButtonHandler::CButtonHandler(QObject *parent) : QObject(parent)
{

}

//----------------------------------------------------------------------------
// Method    : CButtonHandler::~CButtonHandler()
//----------------------------------------------------------------------------
CButtonHandler::~CButtonHandler()
{

}

//----------------------------------------------------------------------------
// Method    : CButtonHandler::onButtonClicked()
//----------------------------------------------------------------------------
void CButtonHandler::onButtonClicked(QString button)
{
    qDebug()<<"CButtonHandler: button clicked: "<<button<<endl;
}
