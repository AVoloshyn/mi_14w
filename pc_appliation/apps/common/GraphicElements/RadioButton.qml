import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import "../Styles/StyleConfig.js" as Configs

RadioButton {
    id: radio_button

    width: 30
    height: 30

    property string background_unchecked: Configs.RadioButton.background_unchecked
    property string background_checked: Configs.RadioButton.background_checked
    property string background_inactive: Configs.RadioButton.background_inactive

    property string indicator_unchecked: Configs.RadioButton.indicator_unchecked
    property string indicator_checked: Configs.RadioButton.indicator_checked
    property string indicator_inactive: Configs.RadioButton.indicator_inactive

    property bool active: true

    style: RadioButtonStyle {
        indicator: Image {
            width: radio_button.width
            height: radio_button.height

            source: {
                if (radio_button.active)
                {
                    if (control.checked)
                        return background_checked
                    else
                        return background_unchecked
                }
                else
                {
                    return background_inactive
                }
            }

            Image {
                id: indicator
                anchors.centerIn: parent
                source: {
                    if (radio_button.active)
                    {
                        if (control.checked)
                            return indicator_checked
                        else
                            return indicator_unchecked
                    }
                    else
                    {
                        return indicator_inactive
                    }
                }
            }
        }
    }
}
