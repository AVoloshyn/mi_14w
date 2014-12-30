import QtQuick 2.4
//import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import common.GraphicElements 1.0

ApplicationWindow {
    id: window
    visible: true
    x: 100
    y: 100
    width: 1000
    height: 600
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width
    title: "Launcher"

    style: ApplicationWindowStyle {
        background: Background { }
    }

    Item {
        id: selector
        anchors.centerIn: parent
        width: parent.width - 100
        height: parent.height - 100

        property int elemWidth : (selector.width - 100)/4
        property int elemHeight : (selector.height - 60)/2

        property real block_1_w_coefficient: 1
        property real block_1_h_coefficient: 1

        property real block_2_w_coefficient: 1
        property real block_2_h_coefficient: 1

        property real block_3_w_coefficient: 1
        property real block_3_h_coefficient: 1

        property real block_4_w_coefficient: 1
        property real block_4_h_coefficient: 1

        property real block_5_w_coefficient: 1
        property real block_5_h_coefficient: 1

        property real block_6_w_coefficient: 1
        property real block_6_h_coefficient: 1

        property real block_7_w_coefficient: 1
        property real block_7_h_coefficient: 1

        property real block_8_w_coefficient: 1
        property real block_8_h_coefficient: 1

        signal coefficientChanged();

        Rectangle {
            id: block_1
            color: "red"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.leftMargin: 20

            Text {
                anchors.centerIn: parent
                text: "1"
            }

            MouseArea {
                id: block_1_ma
                anchors.fill: parent

                onClicked: {
                    selector.recalculateCoefficient("block_1");
                }
            }
        }

        Rectangle {
            id: block_2
            color: "green"
            width: selector.elemWidth
            height: selector.elemHeight

            anchors.left: block_1.right
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.leftMargin: 20

            Text {
                anchors.centerIn: parent
                text: "2"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_2");
                }
            }
        }

        Rectangle {
            id: block_3
            color: "blue"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: block_2.right
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.leftMargin: 20

            Text {
                anchors.centerIn: parent
                text: "3"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_3");
                }
            }
        }

        Rectangle
        {
            id: block_4
            color: "cyan"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: block_3.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            Text {
                anchors.centerIn: parent
                text: "4"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_4");
                }
            }
        }

        Rectangle
        {
            id: block_5
            color: "magenta"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.bottomMargin: 20

            Text {
                anchors.centerIn: parent
                text: "5"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_5");
                }
            }
        }

        Rectangle
        {
            id: block_6
            color: "yellow"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: block_5.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.bottomMargin: 20

            Text {
                anchors.centerIn: parent
                text: "6"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_6");
                }
            }
        }

        Rectangle
        {
            id: block_7
            color: "darkblue"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: block_6.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.bottomMargin: 20

            Text {
                anchors.centerIn: parent
                text: "7"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_7");
                }
            }
        }

        Rectangle
        {
            id: block_8
            color: "darkMagenta"
            width: selector.elemWidth
            height: selector.elemHeight
            anchors.left: block_7.right
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.leftMargin: 20
            anchors.bottomMargin: 20
            anchors.rightMargin: 20

            Text {
                anchors.centerIn: parent
                text: "8"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    selector.recalculateCoefficient("block_8");
                }
            }
        }

        function recalculateCoefficient(block_id)
        {
            var step = 0.1;
            var coeff = (step/3).toFixed(3);
            if (block_id === "block_1")
            {
                selector.block_1_w_coefficient = selector.block_1_w_coefficient + step;
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = selector.block_5_w_coefficient + step;
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_1_h_coefficient = selector.block_1_h_coefficient + step;
                selector.block_5_h_coefficient = selector.block_5_h_coefficient - step;

                coefficientChanged();
            }
            else if (block_id === "block_2")
            {
                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = selector.block_2_w_coefficient + step;
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = selector.block_6_w_coefficient + step;
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_2_h_coefficient = selector.block_2_h_coefficient + step;
                selector.block_6_h_coefficient = selector.block_6_h_coefficient - step;

                coefficientChanged();
            }
            else if (block_id === "block_3")
            {

                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = selector.block_3_w_coefficient + step;
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = selector.block_7_w_coefficient + step;
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_3_h_coefficient = selector.block_3_h_coefficient + step;
                selector.block_7_h_coefficient = selector.block_7_h_coefficient - step;

                coefficientChanged();
            }
            else if (block_id === "block_4")
            {
                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = selector.block_4_w_coefficient + step;
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = selector.block_8_w_coefficient + step;

                selector.block_4_h_coefficient = selector.block_4_h_coefficient + step;
                selector.block_8_h_coefficient = selector.block_8_h_coefficient - step;

                coefficientChanged();
            }
            else if (block_id === "block_5")
            {

                selector.block_1_w_coefficient = selector.block_1_w_coefficient + step;
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = selector.block_5_w_coefficient + step;
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_5_h_coefficient = selector.block_5_h_coefficient + step;
                selector.block_1_h_coefficient = selector.block_1_h_coefficient - step;

                coefficientChanged();
            }
            else if (block_id === "block_6")
            {
                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = selector.block_2_w_coefficient + step;
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = selector.block_6_w_coefficient + step;
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_6_h_coefficient = selector.block_6_h_coefficient + step;
                selector.block_2_h_coefficient = selector.block_2_h_coefficient - step;
                coefficientChanged();
            }
            else if (block_id === "block_7")
            {
                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = selector.block_3_w_coefficient + step;
                selector.block_4_w_coefficient = (selector.block_4_w_coefficient - coeff).toFixed(3);
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = selector.block_7_w_coefficient + step;
                selector.block_8_w_coefficient = (selector.block_8_w_coefficient - coeff).toFixed(3);

                selector.block_3_h_coefficient = selector.block_3_h_coefficient - step;
                selector.block_7_h_coefficient = selector.block_7_h_coefficient + step;
                coefficientChanged();
            }
            else if (block_id === "block_8")
            {
                selector.block_1_w_coefficient = (selector.block_1_w_coefficient - coeff).toFixed(3);
                selector.block_2_w_coefficient = (selector.block_2_w_coefficient - coeff).toFixed(3);
                selector.block_3_w_coefficient = (selector.block_3_w_coefficient - coeff).toFixed(3);
                selector.block_4_w_coefficient = selector.block_4_w_coefficient + step;
                selector.block_5_w_coefficient = (selector.block_5_w_coefficient - coeff).toFixed(3);
                selector.block_6_w_coefficient = (selector.block_6_w_coefficient - coeff).toFixed(3);
                selector.block_7_w_coefficient = (selector.block_7_w_coefficient - coeff).toFixed(3);
                selector.block_8_w_coefficient = selector.block_8_w_coefficient + step;

                selector.block_4_h_coefficient = selector.block_4_h_coefficient - step;
                selector.block_8_h_coefficient = selector.block_8_h_coefficient + step;
                coefficientChanged();
            }
            else
            {
                console.log("recalculateCoefficient: unhandled block id");
            }
        }

        onCoefficientChanged:
        {
            block_1.width = selector.elemWidth*block_1_w_coefficient;
            block_1.height = selector.elemHeight*block_1_h_coefficient;
            block_2.width = selector.elemWidth*block_2_w_coefficient;
            block_2.height = selector.elemHeight*block_2_h_coefficient;
            block_3.width = selector.elemWidth*block_3_w_coefficient;
            block_3.height = selector.elemHeight*block_3_h_coefficient;
            block_4.width = selector.elemWidth*block_4_w_coefficient;
            block_4.height = selector.elemHeight*block_4_h_coefficient;
            block_5.width = selector.elemWidth*block_5_w_coefficient;
            block_5.height = selector.elemHeight*block_5_h_coefficient;
            block_6.width = selector.elemWidth*block_6_w_coefficient;
            block_6.height = selector.elemHeight*block_6_h_coefficient;
            block_7.width = selector.elemWidth*block_7_w_coefficient;
            block_7.height = selector.elemHeight*block_7_h_coefficient;
            block_8.width = selector.elemWidth*block_8_w_coefficient;
            block_8.height = selector.elemHeight*block_8_h_coefficient;
        }
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
