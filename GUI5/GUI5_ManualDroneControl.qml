import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: parent.width
    height: parent.height
    color: "#4a5b7b"

    property color buttonGreenColor: "#00FF00" // Define the green color hex

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        RowLayout {
            Button {
                text: "Home"
                width: 160
                height: 120
                icon.source: "./images/home.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Home button pressed")
            }
            Item {
                Layout.fillWidth: true
                Layout.preferredWidth: parent.width - 360
                Layout.preferredHeight: 80
                Button {
                    text: ""
                    width: 160
                    height: 120
                    icon.source: "./images/up.png"
                    background: Rectangle {
                        color: parent.buttonGreenColor // Reference the green color
                    }
                    onClicked: console.log("Up button pressed")
                }
            }
            Rectangle {
                width: 160
                height: 120
                color: "transparent"
                border.color: "black"
                border.width: 1
                ColumnLayout {
                    Label {
                        text: "Flight Log"
                        Layout.alignment: Qt.AlignHCenter
                    }
                    ListView {
                        id: logView
                        width: 160
                        height: 100
                        model: ListModel {}
                        delegate: Text {
                            text: model.text
                        }
                    }
                }
            }
        }

        RowLayout {
            Button {
                text: ""
                width: 160
                height: 120
                icon.source: "./images/forward.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Forward button pressed")
            }
        }

        RowLayout {
            Button {
                text: "Turn Left"
                width: 120
                height: 80
                icon.source: "./images/turnLeft.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Turn Left button pressed")
            }
            Button {
                text: "Left"
                width: 120
                height: 80
                icon.source: "./images/left.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Left button pressed")
            }
            Button {
                text: "Stream"
                width: 120
                height: 80
                icon.source: "./images/drone.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Stream button pressed")
            }
            Button {
                text: "Right"
                width: 120
                height: 80
                icon.source: "./images/right.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Right button pressed")
            }
            Button {
                text: "Turn Right"
                width: 120
                height: 80
                icon.source: "./images/turnRight.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Turn Right button pressed")
            }
        }

        RowLayout {
            Button {
                text: "Back"
                width: 160
                height: 120
                icon.source: "./images/back.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Back button pressed")
            }
        }

        RowLayout {
            Button {
                text: "Connect"
                width: 120
                height: 80
                icon.source: "./images/connect.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Connect button pressed")
            }
            Item {
                Layout.fillWidth: true
                Layout.preferredWidth: parent.width - 360
                Layout.preferredHeight: 80
                Button {
                    text: ""
                    width: 120
                    height: 80
                    icon.source: "./images/down.png"
                    background: Rectangle {
                        color: parent.buttonGreenColor // Reference the green color
                    }
                    onClicked: console.log("Down button pressed")
                }
            }
            Button {
                text: "Takeoff"
                width: 120
                height: 80
                icon.source: "./images/takeoff.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Takeoff button pressed")
            }
            Button {
                text: "Land"
                width: 120
                height: 80
                icon.source: "./images/land.png"
                background: Rectangle {
                    color: parent.buttonGreenColor // Reference the green color
                }
                onClicked: console.log("Land button pressed")
            }
        }
    }
}
