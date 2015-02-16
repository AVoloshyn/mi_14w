import QtQuick 2.0

Item {
    id: block
    anchors.leftMargin: 20
    anchors.rightMargin: 20
    anchors.topMargin: 20
    anchors.bottomMargin: 20
    state: "front_end"

    property string info_txt: "No Info Text"
    property string front_color: "gray"
    property string front_icon: ""
    property string font_family: "Arial"
    property int font_size_pt: 14

    Rectangle {
        id: block_rect
        width: parent.width
        height: parent.height
        color: block.front_color
        border.color: "white"
        opacity: 0.5
        radius: 15

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#555555" }
            GradientStop { position: 1.0; color: "#111111" }
        }
    }

    Item {
        id: block_front_end
        anchors.fill: parent

        Image {
            id: front_end_icon_img

            width: parent.width*3/4
            height: parent.height*3/4
            anchors.centerIn: parent
            fillMode: Image.PreserveAspectFit
            source: front_icon
        }

        Rectangle {
            id: front_end_info_area
            width: parent.width/4
            height: parent.height/4
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: width/10
            anchors.topMargin: height/10
            color: "#555555"
            border.color: "black"
            radius: block_rect.radius

            Image {
                id: front_end_info_img
                width: parent.width/2
                height: parent.height/2
                fillMode: Image.PreserveAspectFit
                anchors.centerIn: parent
                source: "qrc:/images/info"
            }

            MouseArea {
                id: front_end_info_ma
                anchors.fill: parent
                hoverEnabled: true

                onEntered: {
                    block.state = "back_end"
                }
            }
        }
    }

    Item {
        id: block_back_end
        anchors.fill: parent
        visible: false

        /*
        Rectangle {
            color: "white"
            width: back_end_info_txt.width
            height: back_end_info_txt.height
            anchors.left: parent.right
            //anchors.left: parent.right
            anchors.top: parent.top
            anchors.leftMargin: -10
            anchors.topMargin: 10
            transform: Rotation {
                id: _rotation
                axis.x: 0
                axis.y: 1
                axis.z: 0
                angle: 180
            }
        }
        */

        Text {
            id: back_end_info_txt
            width: parent.width - 20
            height: parent.height - 20
            anchors.left: parent.right
            anchors.top: parent.top
            anchors.leftMargin: -10
            anchors.topMargin: 10
            wrapMode: Text.WordWrap
            font.family: font_family
            font.pointSize: font_size_pt
            color: "white"
            text: info_txt

            transform: Rotation {
                id: text_rotation
                axis.x: 0
                axis.y: 1
                axis.z: 0
                angle: 180
            }
        }

        MouseArea {
            id: back_end_info_ma
            anchors.fill: parent
            hoverEnabled: true

            onExited: {
                block.state = "front_end"
            }
        }
    }

    transform: Rotation {
        id: block_rotation
        axis.x: 0
        axis.y: 1
        axis.z: 0
        origin.x: block.width/2
        origin.y: 0
        angle: 0

        onAngleChanged: {
            block.angleChanged(block_rotation.angle);
        }
    }

    states: [
        State { name: "front_end"
                PropertyChanges { target: block_rotation; angle: 0 }
              },
        State { name: "back_end"
                PropertyChanges { target: block_rotation; angle: 180 }
              }
    ]

    transitions: [
        Transition {
            from: "front_end"
            to: "back_end"
            RotationAnimation { duration: 800; direction: RotationAnimation.Clockwise }
        },
        Transition {
            from: "back_end"
            to: "front_end"
            RotationAnimation { duration: 800; direction: RotationAnimation.Counterclockwise }
        }
    ]

    function angleChanged(angle)
    {
        if (((angle >= 0) && (angle <= 90)) || ((angle >= 270) && (angle <= 360)))
        {
            block_front_end.visible = true;
            block_back_end.visible = false;
        }
        else if ((angle > 90) && (angle < 270))
        {
            block_front_end.visible = false;
            block_back_end.visible = true;
        }
        else
        {
            block_front_end.visible = false;
            block_back_end.visible = false;
            // This else condition is reached in case of unhandled angle
        }
    }
}
