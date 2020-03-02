import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Window
{
    id:root
	objectName: "objWindow1"
    visible: true
    width: 480
    height: 360
    title: qsTr("Hello World")
	
	Rectangle{
		id:idRect1
		objectName : "objRect1"
		color: "teal"
		height: parent.height * 1 / 5//idButton1.height
		anchors.left : parent.left
		anchors.right : parent.right

		Text {
			id : idText1
			text: "Left!"
			font.family: "Helvetica"
			font.pointSize: 24
			color: "black"
			x:0
			y:0
			width: 1/3 * parent.width
		}

		Text {
			id : idText2
			text: "Center!"
			font.family: "Helvetica"
			font.pointSize: 24
			color: "black"
			width: 1/3 * parent.width
			anchors.left : idText1.right
		}

		Text {
			id : idText3
			text: "Right!"
			font.family: "Helvetica"
			font.pointSize: 24
			color: "black"
			width: 1/3 * parent.width
			anchors.left : idText2.right
		}
	}
	
	Rectangle{
		id:idRect2
		anchors.left : parent.left
        anchors.right : parent.right
        anchors.top:idRect1.bottom
		TabView {
			width:parent.width
			height:400
			Tab {
				title: "Red"
				//如果只有一个Button，就会全屏
				Column
				{
					Button
					{
						width:50
						height:50
					}
					Button
					{
						width:50
						height:50
					}
					Button
					{
						width:50
						height:50
					}
					Button
					{
						width:50
						height:50
					}
					Button
					{
						width:50
						height:50
					}
				}			
			}
			Tab {
				title: "Blue"
				Column
				{
					spacing: 2
					Rectangle
					{
						color:"blue"
						width:50
						height:50
					}
					
					Rectangle
					{
						color:"cyan"
						width:50
						height:50
					}
					
					Rectangle
					{
						color:"purple"
						width:50
						height:50
					}
		
				}
			}
			Tab {
				title: "Green"
				id: idRectOfTab2					
				Rectangle
				{
					color:"red"
					width:50
					height:50
					
					Column
					{
						Rectangle
						{
							color:"blue"
							width:50
							height:50
						}
						
						Rectangle
						{
							color:"cyan"
							width:50
							height:50
						}
						
						Rectangle
						{
							color:"purple"
							width:50
							height:50
						}
			
					}
				}

			}
		}
	}
}
