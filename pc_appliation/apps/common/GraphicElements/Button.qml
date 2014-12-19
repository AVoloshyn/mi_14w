import QtQuick 2.0
import "Styles/StyleConfig.js" as Configs

Item {
    id : button

    property string background_normal: Configs.Button.background_normal
    property string background_inactive: Configs.Button.background_inactive
    property string background_hover: Configs.Button.background_hover
    property string background_pressed: Configs.Button.background_pressed

    property string icon_normal: Configs.Button.icon_normal
    property string icon_inactive: Configs.Button.icon_inactive
    property string icon_hover: Configs.Button.icon_hover
    property string icon_pressed: Configs.Button.icon_pressed

    property string btn_text: Configs.Button.btn_text
    property string text_color_normal: Configs.Button.text_color_normal
    property string text_color_inactive: Configs.Button.text_color_inactive
    property string text_color_hover: Configs.Button.text_color_hover
    property string text_color_pressed: Configs.Button.text_color_pressed
    property string text_font_family: Configs.Button.text_font_family
    property int text_font_size: 12

    property int btn_width: Configs.Button.btn_width_default
    property int btn_height: Configs.Button.btn_height_default

    property bool mouseEntered: false

    property bool stretchAndCropMode: false
    property bool asynchronous: false

    state: "active"
    signal clicked()
    signal entered()
    signal exited()
    signal pressAndHold()

    Item {
        id: button_layout_handler

        state: "common_layout"

        states:[
           State {
               name: "common_layout"
               AnchorChanges { target: button_bg_img; anchors.verticalCenter: button.verticalCenter; anchors.horizontalCenter: button.horizontalCenter;}
               PropertyChanges { target: button_bg_img; fillMode: Image.Stretch}
               AnchorChanges { target: icon_img; anchors.verticalCenter: button_bg_img.verticalCenter; anchors.horizontalCenter: button_bg_img.horizontalCenter}
               PropertyChanges { target: icon_img; fillMode: Image.Stretch}
           },
           State {
               name: "stretched_layout"
               AnchorChanges { target: button_bg_img; anchors.top: button.top; anchors.bottom: button.bottom; anchors.left: button.left; anchors.right: button.right;}
               PropertyChanges { target: button_bg_img; fillMode: Image.PreserveAspectCrop}
               AnchorChanges { target: icon_img; anchors.top: button_bg_img.top; anchors.bottom: button_bg_img.bottom; anchors.left: button_bg_img.left; anchors.right: button_bg_img.right;}
               PropertyChanges { target: icon_img; fillMode: Image.PreserveAspectCrop}
           }
        ]
    }

    Image {
        id : button_bg_img
        asynchronous: button.asynchronous
        width: btn_width + 6
        height: btn_height + 6
    }

    Image {
        id: icon_img
        asynchronous: button.asynchronous
        width: btn_width
        height: btn_height

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                button.onPressed();
            }
            onReleased: {
                button.onReleased();
            }
            onEntered:
            {
                button.onEntered();
            }
            onExited: {
                button.onExited();
            }
            onClicked: {
                button.clicked();
            }
            onPressAndHold: {
                button.pressAndHold();
            }
        }

        Text {
            id: button_text
            anchors.fill: parent
            anchors.margins: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            font.family: text_font_family
            font.pointSize: text_font_size
            color: text_color_normal
            text: btn_text
        }

        onStatusChanged: {
            if (icon_img.status == Image.Ready)
            {
                if (button.stretchAndCropMode)
                {
                    if (icon_img.sourceSize.width > button.width || icon_img.sourceSize.height > button.height)
                    {
                        button_layout_handler.state = "stretched_layout"
                    }
                    else
                    {
                        button_layout_handler.state = "common_layout"
                    }
                }
            }
        }
    }


    function onPressed()
    {
        if (state != "inactive")
        {
            state = "pressed";
        }
    }

    function onReleased()
    {
        if (state != "inactive")
        {
            if (mouseEntered)
            {
                state = "hover";
            }
            else
            {
                state = "active";
            }
        }
    }

    function onEntered()
    {
        entered();
        mouseEntered = true;
        if (state != "inactive" && state != "pressed")
        {
            state = "hover";
        }
    }

    function onExited()
    {
        exited();
        mouseEntered = false;
        if (state != "inactive" && state != "pressed")
        {
            state = "active";
        }
    }

   states: [
       State {
           name: "active"
           PropertyChanges { target: button_bg_img; source: background_normal; sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: icon_img; source: icon_normal; sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: button_text; color: text_color_normal;}
       },
       State {
           name: "inactive"
           PropertyChanges { target: button_bg_img; source: background_inactive;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: icon_img; source: icon_inactive;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: button_text; color: text_color_inactive;}
       },
       State {
           name: "hover"
           PropertyChanges { target: button_bg_img; source: background_hover;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: icon_img; source: icon_hover;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: button_text; color: text_color_hover;}
       },
       State {
           name: "pressed"
           PropertyChanges { target: button_bg_img; source: background_pressed;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: icon_img; source: icon_pressed; sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: button_text; color: text_color_pressed;}
       }
    ]

   onEnabledChanged: state = enabled ? "active" : "inactive";
}
