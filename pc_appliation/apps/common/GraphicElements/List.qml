import QtQuick 2.0

    ListView {
        id: list

        property int left_corner_x: 1026
        property int left_corner_y: 54

       // header: header
        delegate: contactDelegate
        focus: true
        clip: true
        boundsBehavior: Flickable.StopAtBounds
        //interactive: true
        //keyNavigationWraps: false

        Component {
                id: contactDelegate
                Item {
                    id: item
                    width: 316; height: 70
                    property int left_corner_x: 1026
                    property int left_corner_y: 124

                    state: "active"

                    property string image_item_selected_active: "qrc:/AudioPlayer/buttons/list_item_selected_active"
                    property string image_item_selected_inactive: "qrc:/AudioPlayer/buttons/list_item_selected_inactive"
                    property string image_item_hover: "qrc:/AudioPlayer/buttons/list_item_hover"
                    property string image_item_pressed: "qrc:/AudioPlayer/buttons/list_item_pressed"

                    property bool mouseEntered: false

                    //color: ListView.isCurrentItem ? "green" : "red"

                    Image{
                        id: backImage
                        width: parent.width
                        height: parent.height
                        anchors.centerIn: parent

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            //preventStealing: true
                            onPressed:{
                                item.state = "pressed";
                                console.log("pressed")
                            }
                            onReleased:{
                                if (item.mouseEntered)
                                {
                                    item.state = "hover";
                                }
                                else
                                {
                                    item.state = "active";
                                }
                                console.log("released")
                            }
                            onEntered:{
                                item.mouseEntered = true;
                                item.state = "hover";
                            }
                            onExited:{
                                item.mouseEntered = false;
                                item.state = "active";
                                console.log("exited")
                            }
                            onClicked:{
                                list.currentIndex = index;
                            }
                            onCanceled: {
                                console.log("canceled");
                                item.state = "active";
                            }
                        }

                    }

                    Text{
                        id: counter
                        x: 1054 - parent.left_corner_x
                        y: 147 - parent.left_corner_y
                        font.pixelSize: 28
                        color: "#09bee2"
                        text: index + 1
                    }
                    Text{

                        //x: counter.r 1092 - parent.left_corner_x
                        //y: 147 - parent.left_corner_y
                        anchors.left: counter.right
                        anchors.leftMargin: 20
                        anchors.top: counter.top
                        font.pixelSize: 28
                        color: "white"
                        text: track
                        width: backImage.width - counter.width - anchors.leftMargin - (counter.x - backImage.x)
                        elide: Text.ElideRight
                    }

                    states:[
                        State {
                            name: "active"
                            PropertyChanges { target: backImage; source: item.ListView.isCurrentItem ? item.image_item_selected_active : ""}
                        },
                        State {
                            name: "inactive"
                            PropertyChanges { target: backImage; source: item.ListView.isCurrentItem ? item.image_item_selected_inactive : ""}
                        },
                        State {
                            name: "hover"
                            PropertyChanges { target: backImage; source: item.image_item_hover}
                        },
                        State {
                            name: "pressed"
                            PropertyChanges { target: backImage; source: item.image_item_pressed}
                        }

                    ]
                }
            }
    }
