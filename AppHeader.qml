import QtQuick 2.0
import QtQuick.Controls 2.14

Item {
    property alias playlistButtonStatus: playlist_button.status
    signal clickPlaylistButton
    Image {
        id: headerItem
        source: "qrc:/Image/title.png"
        SwitchButton {
            id: playlist_button
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            icon_off: "qrc:/Image/drawer.png"
            icon_on: "qrc:/Image/back.png"
            onClicked: {
                clickPlaylistButton()
            }
        }
        Text {
            anchors.left: playlist_button.right
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            text: qsTr("Playlist") + translator.emptyString
            color: "white"
            font.pixelSize: 32
        }
        Text {
            id: headerTitleText
            text: qsTr("Media Player") + translator.emptyString
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 46
        }
//        ComboBox {
//            id: lang_flag
//            model: ListModel {
//                id: flag_model

//                ListElement {
//                    lang: "US"
//                    src: "qrc:/Image/us.png"
//                }ListElement {
//                    lang: "VN"
//                    src: "qrc:/Image/vn.png"
//                }
//            }
//            anchors.right: parent.right
//            anchors.rightMargin: 20
//            anchors.verticalCenter: parent.verticalCenter
//            delegate: Image {
//                width: 50
//                height: 50
//                source: model.src
//                Rectangle{
//                    width: 50
//                    height: 30
//                    anchors.verticalCenter: parent.verticalCenter
//                    border.color: "yellow"
//                    border.width: 3
//                    color: "transparent"
//                    visible: translator.currentLanguage === model.lang
//                }
//                MouseArea {
//                    anchors.fill: parent
//                    onClicked: {
//                        translator.selectLanguage(model.lang)
//                    }
//                }
//            }
//        }
        Image {
            id: vn_flag
            anchors.right: parent.right
            anchors.rightMargin: 20
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image/vn.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "yellow"
                border.width: 3
                color: "transparent"
                visible: translator.currentLanguage === "VN"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    translator.selectLanguage("VN")
                }
            }
        }
        Image {
            id: us_flag
            anchors.right: vn_flag.left
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 50
            height: 50
            source: "qrc:/Image/us.png"
            Rectangle{
                width: 50
                height: 30
                anchors.verticalCenter: parent.verticalCenter
                border.color: "yellow"
                border.width: 3
                color: "transparent"
                visible: translator.currentLanguage === "US"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    translator.selectLanguage("US")
                }
            }
        }
    }
}
