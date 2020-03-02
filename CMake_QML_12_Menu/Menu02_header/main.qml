import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2

ApplicationWindow {    
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    header:GridLayout {
        width: childrenRect.width
        ToolButton{
            text: qsTr("File")
            onClicked: menu.open();
            Menu {
                id: menu
                title: "File"
                topMargin: 30
//                leftMargin: 10
                MenuItem {
                    text: qsTr("File")
                    onTriggered: console.log("File menu click");
                }
                MenuItem {text: "Cut"}
                MenuItem {text: "Copy"}
                MenuItem {text: "Paste"}
            }
        }
        ToolButton{
            text: qsTr("Setting")
            onClicked: menu1.open();
            Menu {
                id: menu1
                title: "File"
                topMargin: 30
//                leftMargin: 10
                MenuItem {
                    text: "Encrypt"
                }
            }
        }
    }
    footer: TabBar {
        id: tabBar
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }   
}
 
