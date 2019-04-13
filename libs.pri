
linux-g++ {
    SUB_LIB = "linux"
}

linux-g++-32 {
    SUB_LIB = "linux"
}
linux-g++-64 {
    SUB_LIB = "linux"
}

macx {
    SUB_LIB = "macx"
}

win32 {
    CONFIG( debug, debug|release ) {
        SUB_LIB = "win32/debug"
    } else {
        SUB_LIB = "win32/release"
    }
}

QUAZIP_DIR   = "/usr"
LIBS        += "-lquazip5"

LIBS        += "-lpoppler"
INCLUDEPATH += "/usr/include/poppler"


linux-g++ {
    LIBS        += -lpaper
}
linux-g++-32 {
    LIBS        += -lpaper
}
linux-g++-64 {
    LIBS        += -lpaper
}

win32 {
    INCLUDEPATH += "$$PWD/openssl/openssl-1.0.2-win32/include"
    QMAKE_LIBDIR += "$$PWD/openssl/openssl-1.0.2-win32/lib/static"

    CONFIG( debug, debug|release ) {
        LIBS += -llibeay32
        LIBS += -lMsvcrtd
    } else {
        LIBS += -llibeay32MT
        LIBS += -lMsvcrt
    }

    LIBS += -lWmvcore
    LIBS += -lWinmm
	
	# need those link if we want to change default printer and print usind shell command
    LIBS        += "-L$$PWD/microsoft/lib" "-lWinspool"
    LIBS        += "-L$$PWD/microsoft/lib" "-lshell32"
}

macx {
    LIBS         += "-framework QuartzCore"
    LIBS         += "-framework AudioToolbox"
    LIBS         += "-framework CoreAudio"
    LIBS         += "-framework ApplicationServices"
    LIBS         += "-framework Cocoa"
            
    LIBS         += "-lcrypto"
}


