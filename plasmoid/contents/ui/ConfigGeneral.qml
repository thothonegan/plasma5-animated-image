import QtQuick 2.2
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.2
import org.kde.plasma.components 2.0 as PlasmaComponents

Item {
	id: main
	Layout.fillWidth: true
    Layout.fillHeight: true
    
	property alias cfg_photoUrl: filePathLabel.text
	
	FileDialog {
		id: fileDialog
		title: 'Select an image'
		folder: shortcuts.home
		nameFilters: [ "Image files (*.jpg *.png *.gif)", "All files (*)" ]
		
		onAccepted: {
			filePathLabel.text = fileDialog.fileUrl
		}
	}


	GridLayout {
		id: grid
		anchors.fill: parent
		
		columns: 1

		Label {
			text: 'File : '
		}

		PlasmaComponents.Button {
			text: 'Select'
			
			onClicked: {
				fileDialog.open()
			}
		}

		Label {
			id: filePathLabel
			text: ''
			
			onTextChanged: {
				fileImage.source = filePathLabel.text
			}
		}
		
		Image {
			id: fileImage
			anchors.left: parent.left
			anchors.right: parent.right
			anchors.top: filePathLabel.bottom
			anchors.bottom: parent.bottom
			
			fillMode: Image.PreserveAspectFit
		}
	}

}

