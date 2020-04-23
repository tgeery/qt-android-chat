QT += qml quick widgets quickwidgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += ../vlc-qt/src ../vlc-qt/build/src /usr/local/include

android {
	LIBS += -Llibs
	equals(ANDROID_TARGET_ARCH, armeabi-v7a) {
		LIBS += -lVLCQt_armeabi-v7a -lVLCQtCore_armeabi-v7a -lVLCQtQml_armeabi-v7a
	}
	equals(ANDROID_TARGET_ARCH, arm64-v8a) {
		LIBS += -lVLCQt_arm64-v8a -lVLCQtCore_arm64-v8a -lVLCQtQml_arm64-v8a
	}
	equals(ANDROID_TARGET_ARCH, x86) {
		LIBS += -lVLCQt -lVLCQtCore -lVLCQtWidgets
	}
	equals(ANDROID_TARGET_ARCH, x86_64) {
		LIBS += -lVLCQt -lVLCQtCore -lVLCQtWidgets
	}
}
!android {
	LIBS += -Llibs -lVLCQt -lVLCQtCore -lVLCQtWidgets
	QMAKE_RPATHDIR += libs
}

SOURCES += \
		player.cpp \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML2_IMPORT_PATH += /usr/local/qml

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML2_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
