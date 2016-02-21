import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    x: 0
    y: 0
    height: 400
    width: 400
    objectName: "TestApp_1_Window"

    Rectangle {
        anchors.centerIn: parent
        height: 200
        width: 300
        color: "green"

        Text {
            text: qsTr("Test Application 1")
            color: "white"
            anchors.centerIn: parent
        }
    }
}
