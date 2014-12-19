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
var styleEnum = {
    METAL : 0,
    DARK  : 1
}

var style = styleEnum.METAL;    // Selected UIGES

if (style === styleEnum.METAL)
{
    var Background = {
        main_background: "Styles/Dark/images/main_bg.png",
    }

    var Group = {
        group_background: "Styles/Dark/images/group_bg.png",
    }

    var Button = {
        background_normal: "Styles/Dark/images/Button/button_normal_bg.png",
        background_inactive: "Styles/Dark/images/Button/button_inactive_bg.png",
        background_hover: "Styles/Dark/images/Button/button_hover_bg.png",
        background_pressed: "Styles/Dark/images/Button/button_pressed_bg.png",
        icon_normal: "Styles/Dark/images/Button/button_normal_layer.png",
        icon_inactive: "Styles/Dark/images/Button/button_inactive_layer.png",
        icon_hover: "Styles/Dark/images/Button/button_hover_layer.png",
        icon_pressed: "Styles/Dark/images/Button/button_pressed_layer.png",
        btn_text: "",
        text_color_normal: "#9d9d9d",
        text_color_inactive: "#353637",
        text_color_hover: "#7f95b7",
        text_color_pressed: "#9d9d9d",
        text_font_family: "Arial",
        btn_width_default: 150,
        btn_height_default: 40,
    }

    var RadioButton = {
        background_inactive: "Styles/Dark/images/RadioButton/radiobutton_inactive_bg.png",
        background_unchecked: "Styles/Dark/images/RadioButton/radiobutton_unchecked_bg.png",
        background_checked: "Styles/Dark/images/RadioButton/radiobutton_checked_bg.png",
        icon_inactive: "Styles/Dark/images/RadioButton/radiobutton_inactive_layer.png",
        icon_unchecked: "Styles/Dark/images/RadioButton/radiobutton_unchecked_layer.png",
        icon_checked: "Styles/Dark/images/RadioButton/radiobutton_checked_layer.png",
    }

    var CheckBox = {
        background_inactive: "Styles/Dark/images/CheckBox/checkbox_inactive_bg.png",
        background_unchecked: "Styles/Dark/images/CheckBox/checkbox_unchecked_bg.png",
        background_checked: "Styles/Dark/images/CheckBox/checkbox_checked_bg.png",
        icon_inactive: "Styles/Dark/images/CheckBox/checkbox_inactive_layer.png",
        icon_unchecked: "Styles/Dark/images/CheckBox/checkbox_unchecked_layer.png",
        icon_checked: "Styles/Dark/images/CheckBox/checkbox_checked_layer.png",
    }

    var Slider = {
        slider_background: "Styles/Dark/images/Slider/slider_bg.png",
        slider_cursor_layer: "Styles/Dark/images/Slider/slider_cursor_layer.png",
        slider_progress_bar_color_from:  "#5a8f98",
        slider_progress_bar_color_to:  "#1a373a"
    }
}
else if (style === styleEnum.METAL)
{
    var Background = {
        main_background: "Styles/Metal/images/main_bg.png",
    }

    var Group = {
        group_background: "Styles/Metal/images/group_bg.png",
    }

    var Button = {
        background_normal: "Styles/Metal/images/Button/button_normal_bg.png",
        background_inactive: "Styles/Metal/images/Button/button_inactive_bg.png",
        background_hover: "Styles/Metal/images/Button/button_hover_bg.png",
        background_pressed: "Styles/Metal/images/Button/button_pressed_bg.png",
        icon_normal: "Styles/Metal/images/Button/button_normal_layer.png",
        icon_inactive: "Styles/Metal/images/Button/button_inactive_layer.png",
        icon_hover: "Styles/Metal/images/Button/button_hover_layer.png",
        icon_pressed: "Styles/Metal/images/Button/button_pressed_layer.png",
        btn_text: "",
        text_color_normal: "#eaeaea",
        text_color_inactive: "#252f2e",
        text_color_hover: "#eaeaea",
        text_color_pressed: "#252f2e",
        text_font_family: "Arial",
        btn_width_default: 150,
        btn_height_default: 40,
    }

    var RadioButton = {
        background_inactive: "Styles/Metal/images/RadioButton/radiobutton_inactive_bg.png",
        background_unchecked: "Styles/Metal/images/RadioButton/radiobutton_unchecked_bg.png",
        background_checked: "Styles/Metal/images/RadioButton/radiobutton_checked_bg.png",
        icon_inactive: "Styles/Metal/images/RadioButton/radiobutton_inactive_layer.png",
        icon_unchecked: "Styles/Metal/images/RadioButton/radiobutton_unchecked_layer.png",
        icon_checked: "Styles/Metal/images/RadioButton/radiobutton_checked_layer.png",
    }

    var CheckBox = {
        background_inactive: "Styles/Metal/images/CheckBox/checkbox_inactive_bg.png",
        background_unchecked: "Styles/Metal/images/CheckBox/checkbox_unchecked_bg.png",
        background_checked: "Styles/Metal/images/CheckBox/checkbox_checked_bg.png",
        icon_inactive: "Styles/Metal/images/CheckBox/checkbox_inactive_layer.png",
        icon_unchecked: "Styles/Metal/images/CheckBox/checkbox_unchecked_layer.png",
        icon_checked: "Styles/Metal/images/CheckBox/checkbox_checked_layer.png",
    }

    var Slider = {
        slider_background: "Styles/Metal/images/Slider/slider_bg.png",
        slider_cursor_layer: "Styles/Metal/images/Slider/slider_cursor_layer.png",
        slider_progress_bar_color_from:  "#50e8d8",
        slider_progress_bar_color_to:  "#005a4d"
    }
}

