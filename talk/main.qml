import QtQuick 2.0
import Qt.labs.presentation 1.0

Presentation
{
    id: frmParent
    width: 1366
    height: 768
    textColor: "black"
/*
    BackgroundSwirls {
        id: itmBackground
    }
*/
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

        Image {
            id: rectLowerbar
            anchors { left: parent.left; right: parent.right; bottom: parent.bottom }
            source: "imgs/stripe01.png"
            width: parent.width * 0.3; height: parent.height * 0.2
            smooth: true


        }
    }

    function switchSlides(from, to, forward) {
        from.visible = false
        to.visible = true
        if (from == sldFirst) {
            itmCounter.visible = true
        } else if (to == sldFirst) {
            itmCounter.visible = false
        }

        return true
    }
    //---------------------- TOP/LOWER BAR ----------------------//

    Slide {
        id: sldFirst
        anchors.fill: parent
        Image {
            source: "imgs/qt-logo.png"
            width: parent.width * 0.3; height: parent.height * 0.4
            fillMode: Image.PreserveAspectFit
            smooth: true
            anchors {
                top: parent.top; left: parent.left
                leftMargin: 10
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
