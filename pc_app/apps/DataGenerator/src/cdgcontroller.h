//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  Application :  DataGenerator
//  File Name   :  CButtonHandler.h
//  Authors     :  AVoloshyn
//  Date Created:  09.01.2015
//  Description :  This file defines button handler class header,
//              :  which will be responsible for data generator buttons handling
//============================================================================
#ifndef CDGCONTROLLER_H
#define CDGCONTROLLER_H

//============================================================================
//                              INCLUDES
//============================================================================
#include <QObject>
#include <QQmlContext>
#include "cbuttonhandler.h"

//============================================================================
//                              DEFINES
//============================================================================
//============================================================================
//                         CLASS DECLARATION
//============================================================================
class CDGController : public QObject
{
    Q_OBJECT
public:
    // -----------------------------------------------------------------------
    // Method      : CDGController()
    // Description : Default constructor
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    explicit CDGController(QQmlContext* rootContext, QObject *parent = 0);

    // -----------------------------------------------------------------------
    // Method      : ~CDGController()
    // Description : Default constructor
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    ~CDGController();

private:
    // -----------------------------------------------------------------------
    // Method      : initContextProperties()
    // Description : initialization of context property
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    void initContextProperties();

    QQmlContext *mContext;
    CButtonHandler mButtonHandler;

signals:

public slots:
};

#endif // CDGCONTROLLER_H
