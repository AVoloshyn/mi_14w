import QtQuick 2.0
import "Styles/StyleConfig.js" as Configs

Item {
    id : radioButton
    width: 35
    height: 35

    property string background_unchecked: Configs.RadioButton.background_unchecked
    property string background_checked: Configs.RadioButton.background_checked
    property string background_inactive: Configs.RadioButton.background_inactive

    property string icon_unchecked: Configs.RadioButton.icon_unchecked
    property string icon_checked: Configs.RadioButton.icon_checked
    property string icon_inactive: Configs.RadioButton.icon_inactive

    property bool checked: false
    signal clicked(bool isChecked)

    Image {
        id : radioButton_bg
        width: parent.width
        height: parent.height
    }

    Image {
        id : radioButton_icon
        anchors.centerIn: radioButton_bg
        MouseArea {
            anchors.fill: parent
            onClicked: {
                checked = !checked;
                radioButton.clicked(checked);
            }
        }
    }

    states: [
        State {
            name: "inactive"
            PropertyChanges { target: radioButton_bg; source: background_inactive}
            PropertyChanges { target: radioButton_icon; source: icon_inactive}
        },
        State {
            name: "unchecked"
            when: !checked
            PropertyChanges { target: radioButton_bg; source: background_unchecked}
            PropertyChanges { target: radioButton_icon; source: icon_unchecked}
        },
        State {
            name: "checked"
            when: checked
            PropertyChanges { target: radioButton_bg; source: background_checked}
            PropertyChanges { target: radioButton_icon; source: icon_checked}
        }
     ]

    onEnabledChanged: state = enabled ? "unchecked" : "inactive";
}
