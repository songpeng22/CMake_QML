import QtQuick 2.0

//import "./Components/"

Rectangle {
	id: root

	width: 360
	height: 360

	property variant win;  // you can hold this as a reference..

	Text {
		text: "Click here to open new window!"
		anchors.centerIn: parent
	}

	MouseArea {
		anchors.fill: parent
		onClicked: {
			var component = Qt.createComponent("../Components/Dialog.qml");
			win = component.createObject(root);
			win.show();
		}
	}
}