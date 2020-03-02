import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4 as QQC1
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.1

//All qml components must begin with a Capital letter, so M in MyComponents
import "../Components" as MyComponents

/*
 * Import MyComponents.DialogBox{}
 */
ApplicationWindow {
	id:idWindow1
	objectName: "objWindow1"
    visible: true
    width: 480
    height: 320
    title: qsTr("Hello World")
	//always on top
//	flags: Qt.WindowStaysOnTopHint
	
    header : ToolBar {
		RowLayout {
			height:idToolButton1.height
			width:idToolButton1.width + idToolButton2.width
            ToolButton {
				id:idToolButton1
                text: qsTr("File")
                onClicked: {
                    console.log("File menu click1");
                    menu1.open();
                }
                Menu {
                    id: menu1
                    title: "File"
                    topMargin: 30
                    leftMargin: 10
                    MenuItem {
                        text: qsTr("Quit")
                        onTriggered: {
                            console.log("File menu click2");
                            Qt.quit();
                        }
                    }
                }
			}
            ToolButton {
				id:idToolButton2
                text: qsTr("?")
                onClicked: menu2.open()
                Menu {
                    id: menu2
                    title: "?"
                    topMargin: 30
                    leftMargin: 10
                    MenuItem {
                        text: qsTr("Info")
                        onTriggered: {
							console.log("File menu click2");
							console.log("File menu click3");
							
						}
						
					MyComponents.DialogBox{}
                    }
                }
			}
		}
	}

    Rectangle {
        color:"#112233"
        anchors.fill : parent

        RowLayout{
            anchors.centerIn: parent
            spacing: 100
            QQC1.Button{
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_subtotal_print.png"
                       fillMode: Image.PreserveAspectFit  // ensure it fits
                   }
               }
            }
            QQC1.Button{
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_subtotal_print.png"
                       fillMode: Image.PreserveAspectFit  // ensure it fits
                   }
               }
            }
            QQC1.Button{
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_loadcell.png"
                       fillMode: Image.PreserveAspectFit  // ensure it fits
                   }
               }
            }
            QQC1.Button{
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_WES.png"
                       fillMode: Image.PreserveAspectFit  // ensure it fits
                   }
               }
            }
            QQC1.Button{
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_info_i.png"
                       fillMode: Image.PreserveAspectFit  // ensure it fits
                   }
               }
            }
        }
    }

    footer : Button{
        id:idButton1
        text: qsTr("Close")
        anchors.centerIn: parent.Center
        onClicked:Qt.quit()
	}
}
