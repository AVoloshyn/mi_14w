import QtQuick 2.0;

Item {
    id: scrollbar;
    visible: (flickable.visibleArea.heightRatio < 1.0);

    property string image_background: ""
    property string image_cursor: ""

    property Flickable flickable               : null;
    property int       handleSize              : backScrollbar.sourceSize.width

    function scrollDown () {
        flickable.contentY = Math.min (flickable.contentY + (flickable.height / 4), flickable.contentHeight - flickable.height);
    }
    function scrollUp () {
        flickable.contentY = Math.max (flickable.contentY - (flickable.height / 4), 0);
    }

   Binding {
        target: handle;
        property: "y";
        value: (flickable.contentY * clicker.drag.maximumY / (flickable.contentHeight - flickable.height));
        when: (!clicker.drag.active);
    }
    Binding {
        target: flickable;
        property: "contentY";
        value: (handle.y * (flickable.contentHeight - flickable.height) / clicker.drag.maximumY);
        when: (clicker.drag.active || clicker.pressed);
    }
    Image {
        id: backScrollbar;
        source: image_background
        anchors { centerIn: parent }

        MouseArea {
            anchors.fill: parent;
            onClicked: { }
        }
    }

    Item {
        id: groove;
        clip: true;
        anchors { fill: parent }

        MouseArea {
            id: clicker;
            drag { target: handle; minimumY: 0; maximumY: (groove.height - handle.height); axis: Drag.YAxis }
            anchors { fill: parent }
            onClicked: { flickable.contentY = (mouse.y / groove.height * (flickable.contentHeight - flickable.height)); }
        }
        Item {
            id: handle;
            height: backHandle.sourceSize.height
            width: backHandle.sourceSize.width
            anchors { left: parent.left; right: parent.right }

            Image {
                id: backHandle;
                anchors { centerIn: parent }
                source: image_cursor
            }
        }
    }
}
