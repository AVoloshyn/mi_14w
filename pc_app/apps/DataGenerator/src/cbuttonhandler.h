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
#ifndef CBUTTONHANDLER_H
#define CBUTTONHANDLER_H

//============================================================================
//                              INCLUDES
//============================================================================
#include <QObject>
#include <QString>

//============================================================================
//                              DEFINES
//============================================================================
//============================================================================
//                         CLASS DECLARATION
//============================================================================
class CButtonHandler : public QObject
{
    Q_OBJECT
public:
    // -----------------------------------------------------------------------
    // Method      : CButtonHandler()
    // Description : Default constructor
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    explicit CButtonHandler(QObject *parent = 0);

    // -----------------------------------------------------------------------
    // Method      : CButtonHandler()
    // Description : Default destructor
    // Inputs      : none
    // Return      : none
    //------------------------------------------------------------------------
    ~CButtonHandler();

signals:

public slots:
    // -----------------------------------------------------------------------
    // Method      : onButtonClicked()
    // Description :
    // Inputs      :
    // Return      :
    //------------------------------------------------------------------------
    void onButtonClicked(QString button);
};

#endif // CBUTTONHANDLER_H
