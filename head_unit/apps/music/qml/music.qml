import QtQuick 2.15
import QtQuick.Controls 2.15
import QtMultimedia 5.15
import QtQuick.Dialogs 1.3
import QtQuick.Layouts 1.0
import USBManager 1.0
import Qt.labs.folderlistmodel 2.1

Item {
    id: music
    visible: true
    width: 1024
    height: 600

    Image {
        id: backgroundImage1
        anchors.fill: parent
        source: "background.png"
    }
    USBManager {
            id: usbManager

        }
    Connections {
        target: usbManager

        function onFileListChanged () {
                   var files = usbManager.fileList;
                   console.log("File list changed. New list1:", files);
                   console.log("File list changed", usbManager.fileList.filePath);
                   playlistModel.clear();

                        // Add songs to the playlistModel
                        for (var i = 0; i < files.length; i++) {
                            var source ="file://" + files[i];

                            var title = source.substring(source.lastIndexOf("/") + 1);

                            playlistModel.append({ title: title, source: source });
                        }

                   // Update your UI or perform any other actions when the file list changes
               }


    }


       Button {
           x:300
           y:70

           text: "Start USB Scan"
           onClicked: usbManager.startUSBScan()
       }









    Button {
        id: backButton3
        width: 100
        height: 100
        Image {
            width: parent.width
            height: parent.height
            source: "back.jpg"
        }
        onClicked: mainLoader.source = "stackViewPage.qml"
        anchors {
            bottom: parent.bottom
            right: parent.right
            margins: 40
        }
    }

    ListView {
        id: playlistView
        width: parent.width / 3
        height: parent.height / 2
        model: ListModel {
            id: playlistModel

        }
        delegate: Item {
            x: 100
            width: 800
            height: 50
            Rectangle {
                width: parent.width
                height: 50
                color: "lightblue"
                border.color: "blue"
                Text {
                    anchors.centerIn: parent
                    text: model.title
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        mediaPlayer.stop()
                        mediaPlayer.source = model.source
                        mediaPlayer.play()
                        playlistView.currentIndex = index
                    }
                }
            }
        }
    }

    MediaPlayer {
        id: mediaPlayer
        autoPlay: false


    }




    Slider {
        id: s1
        x: 250
        y: 400
        width: 600
        from: 0
        to: mediaPlayer.duration
        value: mediaPlayer.position
        onValueChanged: {
            mediaPlayer.position = value
        }
    }

    Column {
        anchors {
            bottom: parent.bottom
            left: playlistView.right
            right: parent.right
        }
        Row {
            spacing: 10
            Button {
                width: 100
                height: 100
                Image {
                    width: parent.width
                    height: parent.height
                    source: "b.jpg"
                }
                onClicked: {
                    var newIndex = playlistView.currentIndex - 1;
                    if (newIndex >= 0) {
                        mediaPlayer.stop();
                        mediaPlayer.source = playlistModel.get(newIndex).source;
                        mediaPlayer.play();
                        playlistView.currentIndex = newIndex;
                    }
                }
            }
            Button {
                width: 100
                height: 100
                Image {
                    width: parent.width
                    height: parent.height
                    source: mediaPlayer.playbackState === MediaPlayer.PlayingState ? "ps.jpg" : "p.jpg"
                }
                onClicked: {
                    if (mediaPlayer.playbackState === MediaPlayer.PlayingState) {
                        mediaPlayer.pause();
                    } else {
                        mediaPlayer.play();
                    }
                }
            }
            Button {
                width: 100
                height: 100
                Image {
                    width: parent.width
                    height: parent.height
                    source: "s.jpg"
                }
                onClicked: mediaPlayer.stop();
            }
            Button {
                id: next
                width: 100
                height: 100
                Image {
                    width: parent.width
                    height: parent.height
                    source: "f.jpg"
                }
                onClicked: {
                    var newIndex = playlistView.currentIndex + 1;
                    if (newIndex < playlistModel.count) {
                        mediaPlayer.stop();
                        mediaPlayer.source = playlistModel.get(newIndex).source;
                        mediaPlayer.play();
                        playlistView.currentIndex = newIndex;
                    }
                }
            }
        }

        Slider {
            id: s2
            width: 430
            from: 0
            to: 1
            value: mediaPlayer.volume
            onValueChanged: {
                mediaPlayer.volume = value
            }
        }
    }
}