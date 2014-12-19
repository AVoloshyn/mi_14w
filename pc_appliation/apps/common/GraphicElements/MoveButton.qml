import QtQuick 2.0

Item {
    id : moveButton

    property string font_family : "Century Gothic"
    property int font_pixel_size: 21
    property string font_color_inactive : "#1C9BB1"     // rgb(28,155,177)
    property string font_color_normal   : "#FFFFFF"     // rgb(255,255,255)
    property string font_color_hover    : "#A0E7FF"     // rgb(160,231,255)
    property string icon_text: ""

    property string background: null
    property string background_inactive: null
    property string background_hover: null
    property string background_pressed: null

    property string icon: null
    property string icon_inactive: null
    property string icon_hover: null
    property string icon_pressed: null

    property bool mouseEntered: false

    state: "active"
    signal clicked()
    signal entered()
    signal exited()

    Text {
        id: icon_text_field
        color: font_color_normal
        text: icon_text
        font.pixelSize: font_pixel_size
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.bottom
        anchors.left: parent.left
        style: Text.Normal
        font.family: font_family
        horizontalAlignment: Text.AlignHCenter
    }

    Image{
        id : backgroundItem
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                moveButton.onPressed();
            }
            onReleased: {
                moveButton.onReleased();
            }
            onEntered: {
                moveButton.onEntered();
            }
            onExited: {
                moveButton.onExited();
            }
            onClicked: {
                moveButton.clicked();
            }
        }
    }

    Image{
        id: iconItem
        anchors.centerIn: backgroundItem
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                moveButton.onPressed();
            }
            onReleased: {
                moveButton.onReleased();
            }
            onEntered:
            {
                moveButton.onEntered();
            }
            onExited: {
                moveButton.onExited();
            }
            onClicked: {
                moveButton.clicked();
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
        // do nothing
    }

    function onEntered()
    {
        // do nothing
    }

    function onExited()
    {
        // do nothing
    }

   states: [
       State {
           name: "active"
           PropertyChanges { target: backgroundItem; source: background}
           PropertyChanges { target: iconItem; source: icon}
           PropertyChanges { target: icon_text_field; color: font_color_normal}
       },
       State {
           name: "inactive"
           PropertyChanges { target: backgroundItem; source: background_inactive}
           PropertyChanges { target: iconItem; source: icon_inactive}
           PropertyChanges { target: icon_text_field; color: font_color_inactive}
       },
       State {
           name: "hover"
           PropertyChanges { target: backgroundItem; source: background_hover}
           PropertyChanges { target: iconItem; source: icon_hover}
           PropertyChanges { target: icon_text_field; color: font_color_hover}
       },
       State {
           name: "pressed"
           PropertyChanges { target: backgroundItem; source: background_pressed}
           PropertyChanges { target: iconItem; source: icon_pressed}
           PropertyChanges { target: icon_text_field; color: font_color_hover}
       }
    ]

   onEnabledChanged: state = enabled ? "active" : "inactive";
   onVisibleChanged: state = enabled ? "active" : "inactive";
}

