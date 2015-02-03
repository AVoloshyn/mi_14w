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
class A
{
public:
    int i;

    virtual void fun()
    {
        qDebug()<<"Class A fun"<<endl;
    }
};

class B: public A
{
public:
    void fun()
    {
        qDebug()<<"Class B fun"<<endl;
    }
};

class C: public A
{
public:
    int i;

    virtual void fun()
    {
        qDebug()<<"Class C fun"<<endl;
    }
};

class COperator
{
    int mas[5];

public:

    COperator()
    {
        for (int i = 0; i < (sizeof mas)/(sizeof (int)); i++)
        {
            mas[i] = i;
        }
    };

    int operator[](int elem)
    {
        return mas[elem];
    }
};


class CBase
{
public:

    int i;

    virtual void printI()
    {
        qDebug()<<"CBase";
    }

    virtual void set()
    {
        qDebug()<<"CDerived";
    }
};

class CDerived : public CBase
{
public:

    int i;

    virtual void printI()
    {
        qDebug()<<"CDerived";
    }

    virtual void set()
    {
        qDebug()<<"CDerived";
    }
};


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


    const int i;

    static int j;

signals:

public slots:
    void onButtonClicked(QString button);
};

#endif // CLAUNCHERHANDLER_H
