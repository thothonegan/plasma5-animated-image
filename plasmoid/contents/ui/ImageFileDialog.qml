import QtQuick.Dialogs 1.2

FileDialog {
	title: 'Select an image'
	folder: shortcuts.home
	nameFilters: [ "Image files (*.jpg *.png *.gif)", "All files (*)" ]
}

