import QtQuick 2.0
import Qt.labs.presentation 1.0

Presentation
{
    id: frmParent
    width: 1024
    height: 768
    textColor: "white"

    BackgroundSwirls {
        id: itmBackground
    }

    SlideCounter {
        id: itmCounter
        visible: false
        anchors { left: parent.left }
        textColor: "black"
    }

    //---------------------- TOP/LOWER BAR ----------------------//
    Item {
        id: itmParent
        anchors.fill: parent
        Rectangle {
            id: rectTopbar
            color: "#333333"
            anchors { left: parent.left; right: parent.right; top: parent.top }
            height: parent.height * 0.16

        }

        Rectangle {
            id: rectLowerbar
            color: "#333333"
            anchors { left: parent.left; right: parent.right; bottom: parent.bottom }
            height: parent.height * 0.16

        }
    }

    function switchSlides(from, to, forward) {
        from.visible = false
        to.visible = true
        if (from == sldFirst) {
            itmParent.visible = false
            itmCounter.visible = true
            frmParent.textColor = "black"
        } else if (to == sldFirst) {
            itmParent.visible = true
            itmCounter.visible = false
            frmParent.textColor = "white"
        }

        return true
    }
    //---------------------- TOP/LOWER BAR ----------------------//

    Slide {
        id: sldFirst
        title: "Your title here"
        Image {
            source: "imgs/background.jpg"

            anchors {
                fill: parent; topMargin: -(parent.height * 0.055)
                bottomMargin: (parent.height * 0.09)
                rightMargin: -(parent.width * 0.06)
                leftMargin: -(parent.width * 0.06)
            }
        }

        Text {
            id: txtAuthor
            text: "The talker"
            color: "#e6e6ff"
            font { pixelSize: 28; }
            anchors { right: parent.right; bottom: parent.bottom;
                bottomMargin: 0.02 * parent.height }

            Text {
                id: txtTitles
                text: "BSc. MSc.\nFoo developer\nFoo contributor"
                color: "#e6e6ff"
                font { pixelSize: 20; }
                anchors { top: parent.bottom; left: parent.left; }
            }
        }

    }

    Slide {
        id: sldSecond
        title: "Yes, slides are QML too..."
        Image {
            source: "imgs/dog-food.png"
            fillMode: Image.PreserveAspectFit
            anchors { fill: parent; topMargin: -(parent.height * 0.055)
                bottomMargin: (parent.height * 0.09)
                rightMargin: -(parent.width * 0.06)
                leftMargin: -(parent.width * 0.06)
            }
        }
    }

    Slide {
        title: "Slide {} Element"
        content: [
            "Bullet points",
            "Should be short",
            "And to the point",
            " Sub point",
            "  Sub Sub point",
            " Sub point"
        ]
    }

    Slide {
        title: "Slide {} Element"
        content: [
            "Bullet points",
            "Should be short",
            "And to the point",
            " Sub point",
            "  Sub Sub point",
            " Sub point"
        ]
    }

}
