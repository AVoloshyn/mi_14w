import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import "../Styles/StyleConfig.js" as Configs

Slider {
    id: slider

    property string slider_background: Configs.Slider.slider_background
    property string slider_handle: Configs.Slider.slider_handle
    property int slider_groove_width: Configs.Slider.slider_groove_width
    property string slider_progress_bar_color_to: Configs.Slider.slider_progress_bar_color_to
    property string slider_progress_bar_color_from: Configs.Slider.slider_progress_bar_color_from

    maximumValue: 100
    minimumValue: 0
    stepSize: 0.1

    style: SliderStyle {
        groove: Image {
            height: slider.slider_groove_width
            source: slider_background
            Rectangle {
                width: styleData.handlePosition
                height: parent.height
                radius: 8
                gradient: Gradient {
                    GradientStop { position: 0.0; color: slider_progress_bar_color_from }
                    GradientStop { position: 1.0; color: slider_progress_bar_color_to }
                }
            }
        }

        handle: Image {
            source: slider_handle
        }
    }
}











/*
Item {
    id: slider;
    width: 400
    height: 20

    property string image_background: Configs.Slider.slider_background
    property string image_cursor: Configs.Slider.slider_cursor_layer
    property string slider_progress_bar_color_to: Configs.Slider.slider_progress_bar_color_to
    property string slider_progress_bar_color_from: Configs.Slider.slider_progress_bar_color_from

    property real maximum: 100
    property real minimum: 0

    property real accuracy: 0.1
    property string orientation: "horizontal"
    property real value: value

    Rectangle {
        id: slider_border
        width: parent.width
        height: parent.height
        anchors.fill: parent
        border.color: "white";
        border.width: 0;
        radius: 10
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#66343434" }
            GradientStop { position: 1.0; color: "#66000000" }
        }

        Image {
            id: slider_bar
            width: parent.width - parent.width*0.05
            height: parent.height - parent.height*0.5
            anchors.centerIn: parent
            source: image_background

            Rectangle {
                id: slider_bar_gradient
                width: 0
                height: parent.height
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                radius: 8
                gradient: Gradient {
                    GradientStop { position: 0.0; color: slider_progress_bar_color_from }
                    GradientStop { position: 1.0; color: slider_progress_bar_color_to }
                }
            }

            Image {
                id: handle
                x: -handle.width/2
                width:  slider.height*1.1
                height: slider.height*1.1
                anchors.verticalCenter: parent.verticalCenter
                source: image_cursor

                MouseArea {
                    id: handle_mouse
                    anchors.fill: parent
                    drag.target: parent
                    drag.axis: Drag.XAxis;
                    drag.minimumX: -handle.width/2
                    drag.maximumX: -handle.width/2 + slider_bar.width

                    onPositionChanged: {
                        var acc_coef = 1/accuracy;
                        value = Math.round((maximum-minimum)*(handle.x + handle.width/2)/slider_bar.width*acc_coef)/acc_coef;
                        slider_bar_gradient.width = value*slider_bar.width/(maximum-minimum);
                    }
                }
            }
        }
    }

    state: orientation

    states: [
        State {
            name: "horizontal"
            PropertyChanges { target: slider; rotation: 0}
        },
        State {
            name: "vertical"
            PropertyChanges { target: slider; rotation: 270}
        }
    ]
}

*/
