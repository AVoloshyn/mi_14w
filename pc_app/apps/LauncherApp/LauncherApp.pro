TEMPLATE = app

QT += qml quick

QML_IMPORT_PATH += ../

SOURCES += main.cpp \
    src/clauncherhandler.cpp

RESOURCES += \
    qml.qrc

OTHER_FILES += qml\main.qml \
               qml\Block.qml \
               qml\Selector.qml


# Default rules for deployment.
include(deployment.pri)

DISTFILES += QMLJSDEBUGGER

HEADERS += \
    src/clauncherhandler.h


# INCLUDEPATH += $$PWD/../../thirdparty/log4cplus-1.2.0/include
# DEPENDPATH += $$PWD/../../thirdparty/log4cplus-1.2.0/include