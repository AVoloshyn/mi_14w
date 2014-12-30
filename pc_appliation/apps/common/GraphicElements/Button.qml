import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.3
import "../Styles/StyleConfig.js" as Configs

Button {
    id : button

    property string background_normal: Configs.Button.background_normal
    property string background_inactive: Configs.Button.background_inactive
    property string background_hover: Configs.Button.background_hover
    property string background_pressed: Configs.Button.background_pressed

    property string label_normal: Configs.Button.label_normal
    property string label_inactive: Configs.Button.label_inactive
    property string label_hover: Configs.Button.label_hover
    property string label_pressed: Configs.Button.label_pressed

    property string text: Configs.Button.btn_text
    property string text_color_normal: Configs.Button.text_color_normal
    property string text_color_inactive: Configs.Button.text_color_inactive
    property string text_color_hover: Configs.Button.text_color_hover
    property string text_color_pressed: Configs.Button.text_color_pressed
    property string text_font_family: Configs.Button.text_font_family
    property int text_font_size: 12

    property int btn_width: Configs.Button.btn_width_default
    property int btn_height: Configs.Button.btn_height_default

    property bool active: true

    width: btn_width
    height: btn_height

    style: ButtonStyle {
        background: Image {
            source:
            {
                if (button.active)
                {
                    if (control.pressed)
                        return background_pressed
                    else if (control.hovered)
                        return background_hover
                    else
                        return background_normal
                }
                else
                {
                    return background_inactive
                }
            }
        }

        label: Component {
            Image {
                source: {
                    if (button.active)
                    {
                        if (control.pressed)
                            return label_pressed
                        else if (control.hovered)
                            return label_hover
                        else
                            return label_normal
                    }
                    else
                    {
                        return label_inactive
                    }
                }
                Text {
                    anchors.fill: parent
                    anchors.margins: 10
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                    font.family: text_font_family
                    font.pointSize: text_font_size
                    color: {
                        if (button.active)
                        {
                            if (control.pressed)
                                return text_color_pressed
                            else if (control.hovered)
                                return text_color_hover
                            else
                                return text_color_normal
                        }
                        else
                        {
                            return text_color_inactive
                        }
                    }
                    text: button.text
                }
            }
        }
    }
}
