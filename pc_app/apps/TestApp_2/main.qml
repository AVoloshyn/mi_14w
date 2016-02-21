import QtQuick 2.3
import QtQuick.Window 2.2

Window {
    visible: true
    x: 600
    y: 0
    height: 400
    width: 400

    Rectangle {
        width: parent.width
        height: parent.height
        anchors.centerIn: parent

        Rectangle {
            height: 200
            width: 300
            color: "red"

            Text {
                text: qsTr("Test Application 2")
                color: "white"
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: button
            color: "black"

            Text {
                text: qsTr("Click")
                color: "white"
                anchors.centerIn: parent
            }

        }
    }
}

