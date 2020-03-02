import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Item
{
	width:800
	height:600
	
    Rectangle {
		width: 200
		height: 80
		color: "linen"

		TextInput {
			id: input1
			x: 8; y: 8
			width: 96; height: 20
			focus: true
			text: "Text Input 1"
		}

		TextInput {
			id: input2
			x: 8; y: 36
			width: 96; height: 20
			text: "Text Input 2"
		}
	}
}
