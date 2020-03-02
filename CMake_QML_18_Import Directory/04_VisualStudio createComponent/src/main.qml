import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4 as QQC1
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.1

import "./Printer" as Printers

ApplicationWindow {
	id:root
	objectName: "objWindow1"
    visible: true
    width: 600
    height: 400
    title: qsTr("Hello World")

	property variant win;

    Rectangle {
        color:"#112233"
        anchors.fill : parent
		
        RowLayout{
            anchors.centerIn: parent
            spacing: 100
            QQC1.Button{
			   MouseArea {
				anchors.fill: parent
				onClicked:{
				 var component = Qt.createComponent("./Printer/PrinterDialog.qml");
				 if( component.status == Component.Ready )
				 {
					win = component.createObject(root);
					win.show();
				 }
				 else
				 {
					console.log("component not ready2");
				 }
			    }
			   }
               style: ButtonStyle {
                   label: Image {
                       source: "./images/kr_sl_bt_subtotal_print.png"
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
