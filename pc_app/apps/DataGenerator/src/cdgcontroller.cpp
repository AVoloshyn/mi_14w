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
#include "cdgcontroller.h"

//----------------------------------------------------------------------------
// Method    : CDGController::CDGController()
//----------------------------------------------------------------------------
CDGController::CDGController(QQmlContext* rootContext, QObject *parent) : QObject(parent)
                                                                        , mContext(rootContext)
{
    initContextProperties();
}

//----------------------------------------------------------------------------
// Method    : CDGController::~CDGController()
//----------------------------------------------------------------------------
CDGController::~CDGController()
{

}

//----------------------------------------------------------------------------
// Method    : CDGController::initContextProperties()
//----------------------------------------------------------------------------
void CDGController::initContextProperties()
{
    mContext->setContextProperty("buttonHandler", &mButtonHandler);
}
