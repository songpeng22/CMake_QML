import QtQuick 2.0
import QtQuick.Controls 1.0
import QtWebEngine 1.1
WebEngineView {
	id: webView
	anchors.fill: parent
	url: "https://www.baidu.com"
	smooth: true
	visible: true
	onNewViewRequested: request.openIn(webView)
}

