import QtQuick 2.0
import QtQuick.Layouts 1.2
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

Item {
	id: main
	property string photoUrl: plasmoid.configuration.photoUrl
	
	Plasmoid.backgroundHints: "NoBackground"
	
	Layout.minimumWidth: 200
	Layout.minimumHeight: 200
	
	AnimatedImage {
		id: mainImage
		fillMode: Image.PreserveAspectFit
		source: photoUrl
		anchors.fill: parent
		
		onSourceChanged: {
			mainImage.playing = true
		}
		
	}
}
