TEMPLATE = app

QT += qml quick

DISTFILES += QMLJSDEBUGGER \
    log4cplus.properties

QML_IMPORT_PATH += ../

HEADERS += \
    src/clauncherhandler.h

SOURCES += main.cpp \
    src/clauncherhandler.cpp

LIBS += -llog4cplus

RESOURCES += \
    qml.qrc

OTHER_FILES += qml\main.qml \
               qml\Block.qml \
               qml\Selector.qml \
               log4cplus.properties

# Default rules for deployment.
include(deployment.pri)
