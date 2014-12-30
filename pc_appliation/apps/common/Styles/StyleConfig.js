//============================================================================
// Copyright (c) 2011 MedInn Co.Ltd.
// All Rights Reserved.
//============================================================================
//  Project     :  MI-14W
//  File Name   :  StyleConfig.js
//  Authors     :  A.Voloshyn
//  Organization:  Medinn Co.Ltd.
//  Version     :  v.1.0
//  Date Created:  12.12.2014
//  Description :  User Interface Graphic Elements Style (UIGES) Configuration
//============================================================================
//
//
//============================================================================
var styles_folder_path = "../Styles/";

var styleEnum = {
    METAL : 0,
    DARK  : 1
}

var style = styleEnum.DARK;    // Selected UIGES

if (style === styleEnum.DARK)
{
    var Font = {

    }

    var Background = {
        main_background: styles_folder_path + "Dark/images/main_bg.png"
    }

    var Group = {
        group_background: styles_folder_path + "Dark/images/group_bg.png"
    }

    var Button = {
        background_normal: styles_folder_path + "Dark/images/Button/button_normal_bg.png",
        background_inactive: styles_folder_path + "Dark/images/Button/button_inactive_bg.png",
        background_hover: styles_folder_path + "Dark/images/Button/button_hover_bg.png",
        background_pressed: styles_folder_path + "Dark/images/Button/button_pressed_bg.png",
        label_normal: styles_folder_path + "Dark/images/Button/button_normal_layer.png",
        label_inactive: styles_folder_path + "Dark/images/Button/button_inactive_layer.png",
        label_hover: styles_folder_path + "Dark/images/Button/button_hover_layer.png",
        label_pressed: styles_folder_path + "Dark/images/Button/button_pressed_layer.png",
        btn_text: "",
        text_color_normal: "#9d9d9d",
        text_color_inactive: "#353637",
        text_color_hover: "#7f95b7",
        text_color_pressed: "#9d9d9d",
        text_font_family: "Arial",
        btn_width_default: 150,
        btn_height_default: 40
    }

    var RadioButton = {
        background_inactive: styles_folder_path + "Dark/images/RadioButton/radiobutton_inactive_bg.png",
        background_unchecked: styles_folder_path + "Dark/images/RadioButton/radiobutton_unchecked_bg.png",
        background_checked: styles_folder_path + "Dark/images/RadioButton/radiobutton_checked_bg.png",
        indicator_inactive: styles_folder_path + "Dark/images/RadioButton/radiobutton_inactive_layer.png",
        indicator_unchecked: styles_folder_path + "Dark/images/RadioButton/radiobutton_unchecked_layer.png",
        indicator_checked: styles_folder_path + "Dark/images/RadioButton/radiobutton_checked_layer.png"
    }

    var CheckBox = {
        background_inactive: styles_folder_path + "Dark/images/CheckBox/checkbox_inactive_bg.png",
        background_unchecked: styles_folder_path + "Dark/images/CheckBox/checkbox_unchecked_bg.png",
        background_checked: styles_folder_path + "Dark/images/CheckBox/checkbox_checked_bg.png",
        indicator_inactive: styles_folder_path + "Dark/images/CheckBox/checkbox_inactive_layer.png",
        indicator_unchecked: styles_folder_path + "Dark/images/CheckBox/checkbox_unchecked_layer.png",
        indicator_checked: styles_folder_path + "Dark/images/CheckBox/checkbox_checked_layer.png",
        text_font_family: "Arial",
        text_font_size: 12,
        text_color_inactive: "#353637",
        text_color_normal: "#9d9d9d",
        text_color_pressed: "#9d9d9d"
    }

    var Slider = {
        slider_background: styles_folder_path + "Dark/images/Slider/slider_bg.png",
        slider_handle: styles_folder_path + "Dark/images/Slider/slider_cursor_layer.png",
        slider_groove_width: 8,
        slider_progress_bar_color_from:  "#5a8f98",
        slider_progress_bar_color_to:  "#1a373a"
    }
}
else if (style === styleEnum.METAL)
{
    var Font = {

    }

    var Background = {
        main_background: styles_folder_path + "Metal/images/main_bg.png"
    }

    var Group = {
        group_background: styles_folder_path + "Metal/images/group_bg.png"
    }

    var Button = {
        background_normal: styles_folder_path + "Metal/images/Button/button_normal_bg.png",
        background_inactive: styles_folder_path + "Metal/images/Button/button_inactive_bg.png",
        background_hover: styles_folder_path + "Metal/images/Button/button_hover_bg.png",
        background_pressed: styles_folder_path + "Metal/images/Button/button_pressed_bg.png",
        label_normal: styles_folder_path + "Metal/images/Button/button_normal_layer.png",
        label_inactive: styles_folder_path + "Metal/images/Button/button_inactive_layer.png",
        label_hover: styles_folder_path + "Metal/images/Button/button_hover_layer.png",
        label_pressed: styles_folder_path + "Metal/images/Button/button_pressed_layer.png",
        btn_text: "",
        text_color_normal: "#eaeaea",
        text_color_inactive: "#252f2e",
        text_color_hover: "#eaeaea",
        text_color_pressed: "#252f2e",
        text_font_family: "Arial",
        btn_width_default: 150,
        btn_height_default: 40
    }

    var RadioButton = {
        background_inactive: styles_folder_path + "Metal/images/RadioButton/radiobutton_inactive_bg.png",
        background_unchecked: styles_folder_path + "Metal/images/RadioButton/radiobutton_unchecked_bg.png",
        background_checked: styles_folder_path + "Metal/images/RadioButton/radiobutton_checked_bg.png",
        indicator_inactive: styles_folder_path + "Metal/images/RadioButton/radiobutton_inactive_layer.png",
        indicator_unchecked: styles_folder_path + "Metal/images/RadioButton/radiobutton_unchecked_layer.png",
        indicator_checked: styles_folder_path + "Metal/images/RadioButton/radiobutton_checked_layer.png"
    }

    var CheckBox = {
        background_inactive: styles_folder_path + "Metal/images/CheckBox/checkbox_inactive_bg.png",
        background_unchecked: styles_folder_path + "Metal/images/CheckBox/checkbox_unchecked_bg.png",
        background_checked: styles_folder_path + "Metal/images/CheckBox/checkbox_checked_bg.png",
        indicator_inactive: styles_folder_path + "Metal/images/CheckBox/checkbox_inactive_layer.png",
        indicator_unchecked: styles_folder_path + "Metal/images/CheckBox/checkbox_unchecked_layer.png",
        indicator_checked: styles_folder_path + "Metal/images/CheckBox/checkbox_checked_layer.png",
        text_font_family: "Arial",
        text_font_size: 12,
        text_color_inactive: "#252f2e",
        text_color_normal: "#eaeaea",
        text_color_pressed: "#33b5a7"
    }

    var Slider = {
        slider_background: styles_folder_path + "Metal/images/Slider/slider_bg.png",
        slider_handle: styles_folder_path + "Metal/images/Slider/slider_cursor_layer.png",
        slider_groove_width: 8,
        slider_progress_bar_color_from:  "#50e8d8",
        slider_progress_bar_color_to:  "#005a4d"
    }
}

