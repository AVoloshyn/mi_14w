import QtQuick 2.0

Image {
    id : icon
    property string image: null
    property string image_inactive: null

    state: "active"
    states: [
        State {
            name: "active"
            PropertyChanges { target: icon; source: image}
        },
        State {
            name: "inactive"
            PropertyChanges { target: icon; source: image_inactive}
        }
     ]

    onEnabledChanged: state = enabled ? "active" : "inactive";
}
