import QtQuick 2.0
import "Styles/StyleConfig.js" as Configs

Item {
    id : checkBox
    width: 35
    height: 35

    property string background_unchecked: Configs.CheckBox.background_unchecked
    property string background_checked: Configs.CheckBox.background_checked
    property string background_inactive: Configs.CheckBox.background_inactive

    property string icon_unchecked: Configs.CheckBox.icon_unchecked
    property string icon_checked: Configs.CheckBox.icon_checked
    property string icon_inactive: Configs.CheckBox.icon_inactive

    property bool checked: false
    signal clicked(bool isChecked)

    RadioButton {
        width: parent.width
        height: parent.height

        background_unchecked: checkBox.background_unchecked
        background_checked: checkBox.background_checked
        background_inactive: checkBox.background_inactive

        icon_unchecked: checkBox.icon_unchecked
        icon_checked: checkBox.icon_checked
        icon_inactive: checkBox.icon_inactive

        checked: checkBox.checked

        onClicked: {
            checkBox.checked = checked;
            checkBox.clicked(checked)
        }
    }
}
