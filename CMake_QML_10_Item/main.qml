import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Item
{
	width:800
	height:600
	
    Item {
		id: idItem1
		
		x:300
		y:0

		opacity: 0.5

		width: 100
		height: 100

		Rectangle { color:"red"; width: 80; height: 80; border.width: 1 }
		Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }
	}
	
	Item {
		id: idItem2
		
		x:200
		y:500

		opacity: 0.5
		
		layer.enabled: true

		width: 100
		height: 100

		Rectangle { color:"plum"; width: 80; height: 80; border.width: 1 }
		Rectangle { x: 20; y: 20; width: 80; height: 80; border.width: 1 }
	}
}
