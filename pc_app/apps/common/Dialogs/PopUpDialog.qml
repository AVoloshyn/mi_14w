import QtQuick 2.0
import QtQuick.Dialogs 1.1
import common.GraphicElements 1.0
import "../Styles/StyleConfig.js" as Configs

MessageDialog {
    id: message_dlg

    /*
    Background {
       id: message_dlg_bg
    }
    */

    function showError(msg)
    {
        if (msg !== null)
        {
            title = "Error";
//            icon = StandardIcon.Critical;
//            text = msg;
            visible = true;
        }
    }

    function showWarning(message)
    {
        if (msg !== null)
        {
            title = "Warning";
//            icon = StandardIcon.Warning;
//            text = msg;
            visible = true;
        }
    }

    function showInfo(message)
    {
        if (msg !== null)
        {
            title = "Info";
//            icon = StandardIcon.Information;
 //           text = msg;
            visible = true;
        }
    }
}
