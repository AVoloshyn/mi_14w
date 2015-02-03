TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    src/clauncherhandler.cpp

RESOURCES += \
    qml.qrc

OTHER_FILES += qml\main.qml \
               qml\Block.qml \
               qml\Selector.qml

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH = "../"

# Default rules for deployment.
include(deployment.pri)

DISTFILES +=

HEADERS += \
    src/clauncherhandler.h

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../thirdparty/log4cplus-1.2.0/msvc10/Win32/bin.Debug/ -llog4cplus

INCLUDEPATH += $$PWD/../../thirdparty/log4cplus-1.2.0/include
DEPENDPATH += $$PWD/../../thirdparty/log4cplus-1.2.0/include
