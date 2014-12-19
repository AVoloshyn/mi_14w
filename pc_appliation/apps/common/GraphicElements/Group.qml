import QtQuick 2.0
import "Styles/StyleConfig.js" as Configs

Image {
    id: group_bg

    property string orientation: "horizontal"

    source: Configs.Group.group_background

    onStatusChanged: {
        if (group_bg.status == Image.Ready)
        {
            if (group_bg.orientation === "horizontal")
            {
                group_bg.rotation = 0;
            }
            else if (group_bg.orientation === "vertical")
            {
                group_bg.rotation = 90;
            }
        }
    }
}
