import QtQuick 2.0
import "Styles/StyleConfig.js" as Configs

Item {
    id : background

    Image {
        width: parent.width
        height: parent.height
        fillMode: Image.TileVertically
        verticalAlignment: Image.AlignTop
        source: Configs.Background.main_background
    }
}
