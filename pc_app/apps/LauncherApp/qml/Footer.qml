import QtQuick 2.0
//import QtQuick.Controls 1.3
//import QtQuick.Controls.Styles 1.3
import common.GraphicElements 1.0

Image {
        id: menubar

        property int volume_value: 20

        property string menubar_normal_src: "qrc:/menuBar/menubar_bg_normal"
        property string menubar_hover_src: "qrc:/menuBar/menubar_bg_hover"

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        state: "normal"

        function cursor_entered()
        {
            menubar.state = "hover"
        }

        function cursor_exited()
        {
            menubar.state = "normal"
        }

        function showLauncher()
        {
            console.log("HmiClient.DISPLAY_ID_HEADUNIT: back to Launcher screen");
        }

        MouseArea {
            id: menubar_ma

            anchors.fill: parent
            hoverEnabled: true
            onEntered: menubar.state = "hover"
            onExited: menubar.state = "normal"
        }

        Button {
            id: menubar_btn

            anchors.centerIn: parent

            width: 80
            height: 80

            label_normal: "qrc:/menuBar/menubar_btn_normal"
            label_hover: "qrc:/menuBar/menubar_btn_hover"
            label_pressed: "qrc:/menuBar/menubar_btn_pressed"
            label_inactive: "qrc:/menuBar/menubar_btn_normal"

            background_normal: ""
            background_inactive: ""
            background_hover: "qrc:/menuBar/menubar_btn_hover_bg"
            background_pressed: "qrc:/menuBar/menubar_btn_hover_bg"

        }

        Rectangle {
            id: volume_container

            width: 300
            height: parent.height

            color: "transparent"

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: -210

            Text {
                id: volume_label

                text: "Vol."
                font.pointSize: 30

                color: "white"

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: aux_vol_container.left
                anchors.rightMargin: 10
            }

            Rectangle {
                id: aux_vol_container

                height: parent.height
                width: parent.width / 2

                color: "transparent"

                anchors.right: parent.right
                anchors.bottom: parent.bottom

                Text {
                    id: volume_text

                    text: menubar.volume_value
                    font.pointSize: 30

                    color: "white"

                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
       }

        Rectangle {
            id: time_container

            width: 300
            height: parent.height

            color: "transparent"

            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.horizontalCenterOffset: 0

            Text {
                id: time_text

                text: Qt.formatTime(new Date(), "hh:mm")
                font.pointSize: 30

                color: "white"

                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.horizontalCenterOffset: 210
            }
        }

        states: [
            State {
                name: "normal"
                PropertyChanges {
                    target: menubar
                    source: menubar_normal_src
                }
                PropertyChanges {
                    target: menubar_btn
                    state: "active"
                }
            },
            State {
                name: "hover"
                PropertyChanges {
                    target: menubar
                    source: menubar_hover_src
                }
                PropertyChanges {
                    target: menubar_btn
                    state: "hover"
                }
            }
        ]
    }


