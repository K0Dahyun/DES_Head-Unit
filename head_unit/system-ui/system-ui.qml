
import QtQuick 2.4
import QtQuick.Window 2.1
import QtGraphicalEffects 1.0
import QtApplicationManager 2.0
import QtApplicationManager.SystemUI 2.0

import User.HUSystem 1.0

Window {
    id:root
    width: 1024
    height: 600
    visible: true
    color: "black"

    IntentServerHandler {
        intentIds: [ "get-color" ]
        visibility: IntentObject.Public
        onRequestReceived: {
            var changedcolor = request.parameters.abColorValue;
            root.color = changedcolor
            request.sendReply({ "done": true });
        }
    }

    IntentServerHandler {
        intentIds: [ "get-initialcolor" ]
        visibility: IntentObject.Public
        onRequestReceived: {
            request.sendReply({ abIniColorValue: root.color});
        }
    }

    IntentServerHandler {
        intentIds: [ "get-light" ]
        visibility: IntentObject.Public
        onRequestReceived: {
            request.sendReply({ huLightValue: husystem.hu_light});
        }
    }

    HUSystem {
        id: husystem
        property var hu_gear: gear // source data 
        property var hu_light: light // source data
    }

    Image{
        id: background
        width: 935
        height: 550
        source: "images/black.png"

        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

        Image {
            id: benz_logo
            source: "images/benz_logo.png"
            anchors{
                left: parent.left
                leftMargin: 350
                top: parent.top
                topMargin: 150 
            }  
            width: 348
            height: 300
        }

        GearSelection {
            id: gearselection
            anchors{
                top: parent.top
                topMargin: 120
                left: parent.left
                leftMargin: 50
            }      
        }

        // Show application names and icons
        Row {
            anchors{
                right: parent.right
                top: parent.top
                topMargin: 52
                rightMargin: 100
            }
            id: functionality
            spacing: 200
            Repeater {
                model: ApplicationManager
                Image {
                    source: model.icon
                    MouseArea {
                        anchors.fill: parent
                        onClicked: model.isRunning ? application.stop() : application.start()
                    }
                }
            }
        }

        // Show windows
        Repeater {
            model: WindowManager
            WindowItem {
                anchors{
                    right: parent.right
                    top: parent.top
                    topMargin: 130
                    rightMargin: 100
                }
                width: 700
                height: 400
                window: model.window
            }
        }



    }

}