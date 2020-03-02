import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.2

ApplicationWindow {
	header : ToolBar {
		RowLayout {
			height:idToolButton1.height
			width:idToolButton1.width + idToolButton2.width
			ToolButton {
				id:idToolButton1
				text: qsTr("ToolButton1")
				onClicked: stack.pop()
			}
			ToolButton {
				id:idToolButton2
				text: qsTr("ToolButton2")
				onClicked: menu.open()
			}
		}
	}
} 
