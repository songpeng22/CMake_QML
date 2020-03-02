import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

import QtGraphicalEffects 1.0

Item {
    width: 500
    height: 500

    Rectangle {
        anchors.fill: parent
        color: "black"
		
		Text {
			id:idText1
			text: "The quick brown fox"
			color: "#303030"
			font.family: "Ubuntu"
			font.pixelSize: 28
		}
		
		Glow {
			source: idText1
			anchors.fill: idText1
			radius: 5
			samples: 16
			color: "green"
		}	
    }
	
/*	*/	
    Image {
        id: butterfly
		y: 100
        source: "images/Original_butterfly_black.png"
        sourceSize: Qt.size(parent.width, parent.height)
        smooth: true
        visible: false
    }
	


    Glow {
        anchors.fill: butterfly
        radius: 8
        samples: 17
        color: "black"
        source: butterfly
		spread: 0.5
    }

}