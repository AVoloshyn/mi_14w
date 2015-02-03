import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: selector

    property int elemWidth: (selector.width - 100)/4
    property int elemHeight: (selector.height - 60)/2

    property real min_coefficient: 0.2
    property real step: 0.02

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

    Block {
        id: block_1
        width: selector.elemWidth
        height: selector.elemHeight
        anchors.left: parent.left
        anchors.top: parent.top
        front_icon: "qrc:/images/bluetooth"
        info_txt: "Bluetooth technology ..."

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_1");
                launcherApp.onButtonClicked("Bluetooth");
            }
        }

    }

    Block {
        id: block_2
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_1.right
        anchors.top: parent.top

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_2");
            }
        }
    }

    Block {
        id: block_3
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_2.right
        anchors.top: parent.top

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_3");
            }
        }
    }

    Block
    {
        id: block_4
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_3.right
        anchors.right: parent.right
        anchors.top: parent.top

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_4");
            }
        }
    }

    Block
    {
        id: block_5
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: parent.left
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_5");
            }
        }
    }

    Block
    {
        id: block_6
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_5.right
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_6");
            }
        }
    }

    Block
    {
        id: block_7
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_6.right
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_7");
            }
        }
    }

    Block
    {
        id: block_8
        width: selector.elemWidth
        height: selector.elemHeight

        anchors.left: block_7.right
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        MouseArea {
            anchors.fill: parent
            onClicked: {
                selector.recalculateCoefficient("block_8");
            }
        }
    }

    function recalculateCoefficient(block_id)
    {
        var coeff = (step/3).toFixed(3);
        if (block_id === "block_1")
        {
            if (((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_2")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_3")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_4")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_5")
        {
            if (((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_1_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_6")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_2_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_7")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_8_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
            coefficientChanged();
        }
        else if (block_id === "block_8")
        {
            if (((selector.block_1_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_2_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_3_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_5_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_6_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_7_w_coefficient - coeff).toFixed(3) > selector.min_coefficient) &&
                ((selector.block_4_h_coefficient - coeff).toFixed(3) > selector.min_coefficient))
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
            }
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
