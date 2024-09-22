import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: parent.width
    height: 600

    //this is not a good way to set background color - I did this just to get us by for now
    Rectangle {
        anchors.fill: parent
        color: "#64778D"
        opacity: 0.5
    }

    Column {
        anchors.centerIn: parent
        spacing: 10

        Label {
            text: "Target IP:"
        }

        TextField {
            id: host_input
            width: 382
        }

        Label {
            text: "Target Username:"
        }

        TextField {
            id: username_input
            width: 382
        }

        Label {
            text: "Target Password:"
        }

        TextField {
            id: private_key_pass_input
            width: 382
            echoMode: TextInput.Password
        }

        Label {
            text: "Private Key Directory:"
        }

        Row {
            width: 382
            TextField {
                id: private_key_dir_input
                width: 312
            }
            Button {
                text: "Browse"
                width: 70
                onClicked: {

                }
            }
        }

        CheckBox {
            text: "Ignore Host Key"
            checked: true
        }

        Label {
            text: "Source Directory:"
        }

        Row {
            width: 382
            TextField {
                id: source_dir_input
                width: 312
            }
            Button {
                text: "Browse"
                width: 70
                onClicked: {

                }
            }
        }

        Label {
            text: "Target Directory:"
        }

        TextField {
            id: target_dir_input
            width: 382
            text: "/home/"
        }

        Button {
            text: "Save Config"
            width: 382
            onClicked: {

            }
        }

        Button {
            text: "Load Config"
            width: 382
            onClicked: {

            }
        }

        Button {
            text: "Clear Config"
            width: 382
            onClicked: {

            }
        }

        Button {
            text: "Upload"
            width: 382
            onClicked: {

            }
        }
    }
}
