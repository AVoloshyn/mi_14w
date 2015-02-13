//============================================================================
//
//============================================================================
//  Project     :  MI-14w
//  File Name   :  CLauncherHandler.h
//  Authors     :  AVoloshyn
//  Date Created:  09.01.2015
//  Description :  This file defines launcher handler class header,
//              :  which will be responsible for launcher buttons handling
//============================================================================
#ifndef CLAUNCHERHANDLER_H
#define CLAUNCHERHANDLER_H

//============================================================================
//                              INCLUDES
//============================================================================
#include <QObject>
#include <QString>
#include <QDebug>

//============================================================================
//                              DEFINES
//============================================================================
//============================================================================
//                         CLASS DECLARATION
//============================================================================
class CLauncherHandler : public QObject
{
    Q_OBJECT

public:
    // -----------------------------------------------------------------------
    // Method      : CLauncherHandler()
    // Description : Default constructor
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    explicit CLauncherHandler(QObject *parent = 0);

    // -----------------------------------------------------------------------
    // Method      : ~CLauncherHandler()
    // Description : Default destructo
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    ~CLauncherHandler();

signals:

public slots:
    void onButtonClicked(QString button);
};

#endif // CLAUNCHERHANDLER_H
