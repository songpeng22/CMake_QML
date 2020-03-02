import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

Dialog {
    visible: true
    title: "Blue sky dialog"
	modality : Qt.ApplicationModal 	//for modal dialog , it works
//    modality : Qt.WindowModal 	//for modal dialog , not works
//    modality : Qt.NonModal 		//for non-modal dialog

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
