import QtQuick 2.0

Item {
    id : button

    property string background: null
    property string background_inactive: null
    property string background_hover: null
    property string background_pressed: null

    property string icon: null
    property string icon_inactive: null
    property string icon_hover: null
    property string icon_pressed: null

    property bool mouseEntered: false

    property bool stretchAndCropMode: false
    property bool asynchronous: false

    state: "active"
    signal clicked()
    signal entered()
    signal exited()
    signal pressAndHold()


    Item{
        id: button_layout_handler

        state: "common_layout"

        states:[
           State {
               name: "common_layout"
               AnchorChanges { target: backgroundItem; anchors.verticalCenter: button.verticalCenter; anchors.horizontalCenter: button.horizontalCenter;}
               PropertyChanges { target: backgroundItem; fillMode: Image.Stretch}
               AnchorChanges { target: iconItem; anchors.verticalCenter: backgroundItem.verticalCenter; anchors.horizontalCenter: backgroundItem.horizontalCenter}
               PropertyChanges { target: iconItem; fillMode: Image.Stretch}
           },
           State {
               name: "stretched_layout"
               AnchorChanges { target: backgroundItem; anchors.top: button.top; anchors.bottom: button.bottom; anchors.left: button.left; anchors.right: button.right;}
               PropertyChanges { target: backgroundItem; fillMode: Image.PreserveAspectCrop}
               AnchorChanges { target: iconItem; anchors.top: backgroundItem.top; anchors.bottom: backgroundItem.bottom; anchors.left: backgroundItem.left; anchors.right: backgroundItem.right;}
               PropertyChanges { target: iconItem; fillMode: Image.PreserveAspectCrop}
           }
        ]
    }

    Image{
        id : backgroundItem
        asynchronous: button.asynchronous

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                button.onPressed();
            }
            onReleased: {
                button.onReleased();
            }
            onEntered: {
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
    }

    Image{
        id: iconItem
        asynchronous: button.asynchronous

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

        onStatusChanged: {
            if (iconItem.status == Image.Ready)
            {
                if (button.stretchAndCropMode)
                {
                    if (iconItem.sourceSize.width > button.width || iconItem.sourceSize.height > button.height)
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
        entered()
        mouseEntered = true;
        if (state != "inactive" && state != "pressed")
        {
            state = "hover";
        }
    }

    function onExited()
    {
        exited()
        mouseEntered = false;
        if (state != "inactive" && state != "pressed")
        {
            state = "active";
        }
    }

   states: [
       State {
           name: "active"
           PropertyChanges { target: backgroundItem; source: background; sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: iconItem; source: icon; sourceSize.width: button.width; sourceSize.height: button.height}
       },
       State {
           name: "inactive"
           PropertyChanges { target: backgroundItem; source: background_inactive;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: iconItem; source: icon_inactive;  sourceSize.width: button.width; sourceSize.height: button.height}
       },
       State {
           name: "hover"
           PropertyChanges { target: backgroundItem; source: background_hover;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: iconItem; source: icon_hover;  sourceSize.width: button.width; sourceSize.height: button.height}
       },
       State {
           name: "pressed"
           PropertyChanges { target: backgroundItem; source: background_pressed;  sourceSize.width: button.width; sourceSize.height: button.height}
           PropertyChanges { target: iconItem; source: icon_pressed; sourceSize.width: button.width; sourceSize.height: button.height}
       }
    ]

   onEnabledChanged: state = enabled ? "active" : "inactive";
   onVisibleChanged: state = enabled ? "active" : "inactive";
}
