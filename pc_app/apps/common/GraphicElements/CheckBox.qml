import QtQuick 2.0
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import "../Styles/StyleConfig.js" as Configs

CheckBox {
    id : checkBox
    width: 35
    height: 35

    property string background_unchecked: Configs.CheckBox.background_unchecked
    property string background_checked: Configs.CheckBox.background_checked
    property string background_inactive: Configs.CheckBox.background_inactive

    property string indicator_unchecked: Configs.CheckBox.indicator_unchecked
    property string indicator_checked: Configs.CheckBox.indicator_checked
    property string indicator_inactive: Configs.CheckBox.indicator_inactive

    property string text_color_normal: Configs.CheckBox.text_color_normal
    property string text_color_inactive: Configs.CheckBox.text_color_inactive
    property string text_color_pressed: Configs.CheckBox.text_color_pressed

    property string text_font_family: Configs.CheckBox.text_font_family
    property string text_font_size: Configs.CheckBox.text_font_size

    property bool active: true

    style: CheckBoxStyle {
        indicator: Image {
           width: checkBox.width
           height: checkBox.height

           source: {
               if (checkBox.active)
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
                   if (checkBox.active)
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

        label: Text {
            font.family: text_font_family
            font.pointSize: text_font_size
            color: {
                if (checkBox.active)
                {
                    if (control.checked)
                        return text_color_pressed
                    else
                        return text_color_normal
                }
                else
                {
                    return text_color_inactive
                }
             }
            text: checkBox.text
        }
    }
}


