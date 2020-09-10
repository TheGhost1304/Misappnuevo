import QtQuick 2.3
import QtQuick.controls 2.0

Window {
    color: red
    visible:true
    visibility: "maximized"
    title: qsTr("--Mi primer app en Qml--")
    anchors.centerIn: parent

    Rectangle {
        id:boton
        visible:true
        width:100
        height:50

        Text {
            id: test
            text: qsTr("Esto es un testeo sencillo")
            anchors.centerIn: parent
        }

        MouseArea{
            acceptedButtons: Qt.AllButtons
            onClicked:{
                console.log("No pasara nada, repito esto es un testeo")
                if( mouse.button === Qt.RightButton)
                    console.log("Acaba de pulsar con el lado derecho del mouse")
                parent.color = 'blue'

            }
            onDoubleClicked:{
                console.log("pongo imagen porque estoy jugando con las herramientas")
            }
            Image {
                id: imagen1
                source: "icon.png"
            }
        }
    }
}


