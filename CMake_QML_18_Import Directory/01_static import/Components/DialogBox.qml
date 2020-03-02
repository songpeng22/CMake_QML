import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
	id:idDialog1
	objectName:objDialog1
    visible: true
    title: "Blue sky dialog"

    contentItem: Rectangle {
        color: "lightskyblue"
        implicitWidth: 400
        implicitHeight: 100
        Text {
            text: "Hello blue sky!"
            color: "navy"
            anchors.centerIn: parent
        }
    }
}