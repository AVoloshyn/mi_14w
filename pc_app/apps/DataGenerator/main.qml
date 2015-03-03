import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import common.GraphicElements 1.0

ApplicationWindow {
    id: window
    visible: true
    x: 1100
    y: 50
    width: 800
    height: 400
    title: "Launcher"

    style: ApplicationWindowStyle {
        background: Background { }
    }

    Rectangle {
        id: txt_area
        anchors.centerIn: parent
        width: 400
        height: 30

        Text {
            id: received_txt
            text:""
            color: "black"
            font.pointSize: 14
        }
    }

    Button {
        id: prev_btn
        x: 100
        y: 300
        height: 50
        text: "Previous"
        onClicked: buttonHandler.onButtonClicked("previous")
    }

    Button {
        id: main_btn
        x: 300
        y: 300
        height: 50
        text: "Main"
        onClicked: buttonHandler.onButtonClicked("main")
    }

    Button {
        id: next_btn
        x: 500
        y: 300
        height: 50
        text: "Next"
        onClicked: buttonHandler.onButtonClicked("next")
    }

    Component.onCompleted: {
        console.log("DataGenerator is opened")
    }
}
