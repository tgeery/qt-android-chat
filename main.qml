import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480

    ApplicationWindow {
        id: filtersWindow

        ColumnLayout {
            Loader {
                id: filtersLoader
                source: "filters.qml"
                visible: true
            }
        }
        RowLayout {
            visible: true
            y: filtersWindow.height - 50

            Button {
                text: "Cancel"
                onReleased: {
                    filtersWindow.close()
                }
            }
            Button {
                text: "Save"
                onReleased: {
                    filtersWindow.close()
                }
            }
        }
    }

    ApplicationWindow {
        id: videoWindow

        ColumnLayout {
            Loader {
                id: videoLoader
                source: "video.qml"
                visible: true
            }
        }
    }

    ColumnLayout {
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            anchors.horizontalCenter: parent.horizontalCenter

            Text {
                text: "Rules:"
                x: 50
            }
            Text {
                text: "   - No phones within six feet"
                x: 50
            }
            Text {
                text: "   - Must be respectful"
                x: 50
            }
            Text {
                text: "   - Can engage in future chat in both party thumbs up"
                x: 50
            }
        }

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            Button {
                text: "Filters"
                width: 300
                onClicked: {
                    filtersWindow.show()
//                    pageLoader.visible = true
//                    var comp = Qt.createComponent("filters.qml");
//                    var wd = comp.createObject(parent);
                }
            }
        }
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            RowLayout {
                Row {
                    Button {
                        text: "1x1"
                    }
                }
                Row {
                    Button {
                        text: "2x2"
                    }
                }
                Row {
                    Button {
                        text: "3x3"
                    }
                }
            }
        }
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            Button {
                text: "Let's Social Q"
                width: 300
                onClicked: {
                    videoWindow.show()
                }
            }
        }
        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            Label {
                text: "QChat"
            }
        }
    }
}
