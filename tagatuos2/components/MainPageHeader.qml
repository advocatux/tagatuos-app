import QtQuick 2.4
import Ubuntu.Components 1.3
import "BaseComponents"

BaseHeader {
    id:root

    visible: opacity === 0 ? false : true

//        flickable: listView.currentItem.item.listView


    function show(){
        opacity = 1
    }

    function hide(){
        opacity = 0
    }

    Behavior on opacity {
        UbuntuNumberAnimation {
            easing: UbuntuAnimation.StandardEasing
            duration: UbuntuAnimation.BriskDuration
        }
    }

    contents: Label {
        text: root.title
        textSize: Label.Large
        font.weight: Font.Normal
        anchors.centerIn: parent
        fontSizeMode: Text.HorizontalFit
        //horizontalAlignment: Text.Center
        color: theme.palette.normal.foregroundText
        minimumPixelSize: units.gu(3)
        elide: Text.ElideRight
    }
}
