import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Window {
	id:idWindow1
	objectName: "objWindow1"
    visible: true
    width: 480
    height: 320
    title: qsTr("Hello World")

	ColumnLayout {
        id: idlayout1
		objectName: "objLayout1"
        anchors.fill: parent
        spacing: 0
        Rectangle {
			id:idRect1
			objectName: "objRect1"
            color: 'teal'
            Layout.fillWidth: true;
            Layout.fillHeight: true; //implicitHeight

            Text {
                anchors.centerIn: parent
                text: parent.width + 'x' + parent.height
            }

			Button {
				id: idButton1
				objectName: "objButton1"
				x: 0
				y: 0
				width: 173
				height: 88
				text: qsTr("txtButton1")
			}
        }
        Rectangle {
			id:idRect2
			objectName: "objRect2"
            color: 'plum'
            Layout.fillWidth: true;
            Layout.fillHeight: true;

			Image {
				id: idImageRoot
				source: "images/background.png"
				Image {
					id: pole
					anchors.horizontalCenter: parent.horizontalCenter
					anchors.bottom: parent.bottom
					source: "images/pole.png"
				}

				Image {
					id: wheel
					anchors.centerIn: parent
					source: "images/pinwheel.png"
					Behavior on rotation {
						NumberAnimation {
							duration: 250
						}
					}
				}

				MouseArea {
					anchors.fill: parent
					onClicked: wheel.rotation += 90
				}
			}
		}
	}
}
