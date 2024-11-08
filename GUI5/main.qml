import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: "Avatar"

    ColumnLayout {
        anchors.fill: parent
        width: parent.width * 2/3 // Adjust width to 2/3 of the parent width

        // Tab bar
        TabBar {
            id: tabBar
            position: TabBar.Header
            width: parent.width
            height: 40 // Fixed height for the tab bar

            // Use Row instead of the default layout
            contentItem: Row {
                spacing: 0 // No spacing between tabs

                Repeater {
                    model: tabBar.contentModel
                }
            }

            TabButton {
                text: "Brainwave Reading"
                width: contentItem.implicitWidth + 20 // Add some padding
            }
            TabButton {
                text: "Transfer Data"
                width: contentItem.implicitWidth + 20
            }
            TabButton {
                text: "Manual Drone Control"
                width: contentItem.implicitWidth + 20
            }
        }

        // Stack layout for different views
        StackLayout {
            Layout.fillWidth: true
            Layout.fillHeight: true
            currentIndex: tabBar.currentIndex

            // Brainwave Reading view
            Rectangle {
                color: "lightgrey"
                Text {
                    anchors.centerIn: parent
                    //text: "Brainwave Reading View"
                }
            }

            // Transfer Data view
            Loader {
                source: "GUI5_TransferData.qml"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            // Manual Drone Control view
            Loader {
                source: "GUI5_ManualDroneControl.qml"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
    }
}
