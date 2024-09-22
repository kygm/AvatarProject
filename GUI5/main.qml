import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    Column {
        anchors.fill: parent

        Row {
            id: tabBarRow
            width: parent.width * 2/3 
            height: tabBar.height

            Rectangle {
                width: parent.width
                height: parent.height
                color: "#64778D" 
            }

            Item {
                id: tabBar 
                width: parent.width 
                height: tabBarRow.height 
            }

            TabButton {
                text: "Brainwave Reading"
                onClicked: stackView.push("brainwave-reading-page.qml")
            }
            TabButton {
                text: "Manual Drone Control"
                onClicked: stackView.push("manual-drone-control-page.qml")
            }
            TabButton {
                text: "Transfer Data"
                onClicked: stackView.push("transfer-data-page.qml")
            }
        }

        StackView {
            id: stackView
            anchors.fill: parent
        }
    }
}
