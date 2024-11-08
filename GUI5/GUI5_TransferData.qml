import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

// Transfer Data view
Rectangle {
    color: "#4a5b7b"
    ScrollView {
        anchors.centerIn: parent
        width: Math.min(parent.width * 0.9, 600) // Set a maximum width
        height: Math.min(parent.height * 0.9, contentHeight)
        clip: true

        ColumnLayout {
            id: contentLayout
            width: parent.width
            spacing: 10

            Label { text: "Target IP"; color: "white" }
            TextField { Layout.fillWidth: true }

            Label { text: "Target Username"; color: "white" }
            TextField { Layout.fillWidth: true }

            Label { text: "Target Password"; color: "white" }
            TextField {
                Layout.fillWidth: true
                echoMode: TextInput.Password
            }

            Label { text: "Private Key Directory:"; color: "white" }
            RowLayout {
                Layout.fillWidth: true
                TextField {
                    id: privateKeyDirInput
                    Layout.fillWidth: true
                }
                Button {
                    text: "Browse"
                    onClicked: console.log("Browse for Private Key Directory")
                }
            }

            CheckBox {
                text: "Ignore Host Key"
                checked: true
                contentItem: Text {
                    text: parent.text
                    color: "white"
                    leftPadding: parent.indicator.width + parent.spacing
                }
            }

            Label { text: "Source Directory:"; color: "white" }
            RowLayout {
                Layout.fillWidth: true
                TextField {
                    id: sourceDirInput
                    Layout.fillWidth: true
                }
                Button {
                    text: "Browse"
                    onClicked: console.log("Browse for Source Directory")
                }
            }

            Label { text: "Target Directory:"; color: "white" }
            TextField {
                Layout.fillWidth: true
                text: "/home/"
                placeholderText: "/home/"
            }

            RowLayout {
                Layout.fillWidth: true
                Button {
                    text: "Save Config"
                    onClicked: console.log("Save Config clicked")
                }
                Button {
                    text: "Load Config"
                    onClicked: console.log("Load Config clicked")
                }
                Button {
                    text: "Clear Config"
                    onClicked: console.log("Clear Config clicked")
                }
                Button {
                    text: "Upload"
                    onClicked: console.log("Upload clicked")
                }
            }
        }
    }
}

            
    

