import QtQuick 2.12
//import VLCQt 1.1
import player 1.0

Rectangle {
    id: videoContent
    width: 300
    height: 200
    color: "green"

	Player {
		id: video
	}
/*    VlcPlayer {
        id: player
        logLevel: Vlc.DebugLevel
        url: "rtmp://localhost/live/test"
    }
    VlcVideoOutput {
        id: video
        source: player
        anchors.fill: parent
    }*/
}
