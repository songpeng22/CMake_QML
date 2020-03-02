import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.2
import QtQuick.Controls 1.4

Item
{
	width:800
	height:600
	
    TabView {
        width:parent.width
        height:400
		Tab {
			title: "Red"
			//如果只有一个Button，就会全屏
			Column
			{
				GroupBox
				{
					title:"Group1"
					
					x:10
					y:10
					
					width:200
					height:100
					
					Button
					{
						width:60
						height:30
						text:"button"
					}
				}
				Button
				{
					width:40
					height:20
				}
			}			
		}
		Tab {
			title: "Blue"
			Rectangle { color: "blue" }
		}
		Tab {
			title: "Green"
			Rectangle { color: "green" }
		}
	}
}
