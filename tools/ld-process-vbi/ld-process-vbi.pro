QT -= gui

CONFIG += c++17 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    closedcaption.cpp \
    decoderpool.cpp \
    main.cpp \
    fmcode.cpp \
    vbilinedecoder.cpp \
    whiteflag.cpp \
    ../library/tbc/dropouts.cpp \
    ../library/tbc/jsonio.cpp \
    ../library/tbc/lddecodemetadata.cpp \
    ../library/tbc/logging.cpp \
    ../library/tbc/sourcevideo.cpp \
    ../library/tbc/vbidecoder.cpp

HEADERS += \
    closedcaption.h \
    decoderpool.h \
    fmcode.h \
    vbilinedecoder.h \
    whiteflag.h \
    ../library/tbc/dropouts.h \
    ../library/tbc/jsonio.h \
    ../library/tbc/lddecodemetadata.h \
    ../library/tbc/logging.h \
    ../library/tbc/sourcevideo.h \
    ../library/tbc/vbidecoder.h

# Add external includes to the include path
INCLUDEPATH += ../library/tbc

# Include git information definitions
isEmpty(BRANCH) {
    BRANCH = "unknown"
}
isEmpty(COMMIT) {
    COMMIT = "unknown"
}
DEFINES += APP_BRANCH=\"\\\"$${BRANCH}\\\"\" \
    APP_COMMIT=\"\\\"$${COMMIT}\\\"\"


# Rules for installation
isEmpty(PREFIX) {
    PREFIX = /usr/local
}
unix:!android: target.path = $$PREFIX/bin/
!isEmpty(target.path): INSTALLS += target
