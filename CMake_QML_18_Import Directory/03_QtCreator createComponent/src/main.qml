import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2
import QtQuick.Controls 1.4 as QQC1
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.1

//import "./Printer" as Printers

ApplicationWindow {
	id:root
	objectName: "objWindow1"
    visible: true
    width: 600
    height: 400
    title: qsTr("Hello World")
    Rectangle {
        color:"#112233"
        anchors.fill : parent
    }
/*
    Rectangle {
        color:"#112233"
        anchors.fill : parent
        QQC1.Button{
           anchors.centerIn: parent
           MouseArea {
            anchors.fill: parent
            onClicked:{
                createPrinterDialog()
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

    property variant win;
    property Component myComponent: null
    function createPrinterDialog()
    {
        root.myComponent = Qt.createComponent("./Printer/PrinterDialog.qml");
        if( root.myComponent.status == Component.Ready )
        {
           win = root.myComponent.createObject(root);
           win.show();
        }
        else
           console.log("component not ready2");
    }
*/
}
