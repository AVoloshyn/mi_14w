import QtQuick 2.4
//import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
//import common.GraphicElements 1.0

ApplicationWindow {
    id: window
    visible: true
    x: 100
    y: 100
    width: 1000
    height: 600
    //maximumHeight: height
    //maximumWidth: width
    //minimumHeight: height
    //minimumWidth: width
    title: "Launcher"

 //   style: ApplicationWindowStyle {
 //       background: Background { }
 //   }

    Selector {
        id: selector_item
        anchors.centerIn: parent
        width: parent.width - 200
        height: parent.height - 200
    }


    /*
    RadioButton {
        id: radio_btn
        x: 100
        y: 100
        onCheckedChanged: printLog(checked)
    }

    CheckBox {
        text: qsTr("Breakfast")
        checked: true
        onCheckedChanged: printLog(checked)
    }

    Button {
        id: prev_btn
        x: 250
        y: 500
        height: 50
        text: "Previous"
        onClicked: printLog(text)
    }

    Button {
        id: main_btn
        x: 450
        y: 500
        height: 50
        text: "Main"
        onClicked: printLog(text)
    }

    Button {
        id: next_btn
        x: 650
        y: 500
        height: 50
        text: "Next"
        onClicked: printLog(text)
    }

    Slider {
        x: 700
        y: 200
        height: 200
        orientation: Qt.Vertical
        onValueChanged: printLog(value)
    }

    function printLog(log)
    {
        console.log(log);
    }
    */
}
