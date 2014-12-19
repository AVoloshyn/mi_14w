import QtQuick 2.3
import QtQuick.Window 2.2
import common.GraphicElements 1.0

Window {
    id: launcher_window
    visible: true
    width: 904
    height: 595
    color: "black"
    title: "Launcher"

    opacity: 1

    Background {
       id: launcher_bg
       width: 904
       height: 595
    }

    Group {
        id: buttons_group
        x: 50
        y: 200
        width: 80
        height: 40
        orientation: "horizontal"

        RadioButton {
            id: radio_btn
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            onClicked: printLog(checked)
        }

        CheckBox {
            id: checkbox_btn
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            onClicked: printLog(checked)
        }
    }

    Button {
        id: prev_btn
        x: 100
        y: 100
        btn_text: "Previous"
        onClicked: printLog(btn_text)
    }

    Button {
        id: main_btn
        x: 400
        y: 100
        btn_text: "Main"
        onPressAndHold: printLog(btn_text)
    }

    Button {
        id: next_btn
        x: 700
        y: 100
        btn_text: "Next"
        onClicked: printLog(btn_text)
    }

    Slider {
        id: launcher_slider
        x: 300
        y: 300
        width: 200
        orientation: "vertical"
        onValueChanged: printLog(value)
    }

    function printLog(log)
    {
        console.log(log);
    }
}
