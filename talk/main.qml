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

    Image {
        id: rectLowerStart
        smooth: true
        source: "imgs/stripe01.png"
        width: parent.width * 0.3; height: parent.height * 0.25
        anchors { left: parent.left; right: parent.right;
            bottom: parent.bottom; bottomMargin: 10 }

    }

    Image {
        id: rectLowerbar
        visible: false
        smooth: true
        source: "imgs/stripe02.png"
        width: parent.width * 0.3; height: parent.height * 0.13
        anchors { left: parent.left; right: parent.right;
            bottom: parent.bottom; bottomMargin: 10 }

    }


    function switchSlides(from, to, forward) {
        from.visible = false
        to.visible = true
        if (from == sldFirst) {
            rectLowerStart.visible = false
            rectLowerbar.visible = true
        } else if (to == sldFirst) {
            rectLowerStart.visible = true
            rectLowerbar.visible = false
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
            id: txtTitle
            text: "Qt Project - 2 years later"
            font { pixelSize: 38; }
            anchors { right: parent.right; top: parent.top;
                topMargin: 0.3 * parent.height;
                rightMargin: 30
            }
        }

        Text {
            id: txtAuthor
            text: "Thiago Macieira, Qt Core Maintainer"
            font { pixelSize: 28; }
            anchors { right: parent.right; top: parent.top;
                topMargin: 0.7 * parent.height;
                rightMargin: 30
            }

            Text {
                id: txtTitles
                text: "Edinburgh, Oct 2013"
                font { pixelSize: 20; }
                anchors { top: parent.bottom; left: parent.left; }
            }
        }

    }
/*
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
*/
    Slide {
        title: "Who am I?"
        content: [
            "Software Architecture at Intel's Open Source Technology
            Center (OTC) since 2011",
            " Living in Portland, Oregon",
            "Maintainer of two modules in the Qt Project",
            "  QtCore and QtBus",
            "MBA and double degree in Engineering",
            "Previously, led the Qt Open Governance project"
        ]
    }

    Slide {
        anchors.fill: parent
        Image {
            id: imgCake
            source: "imgs/cake.png"
            fillMode: Image.PreserveAspectFit
            smooth: true
            anchors {
                top: parent.top; left: parent.left;
                right: parent.right; bottomMargin: 30
            }
        }

        Text {
            id: txtAniversary
            text: "The Qt Project celebrated\n2years on October 22"
            font { pixelSize: 28 }
            anchors {
                top: imgCake.bottom; left: parent.left;
                right: parent.right;
            }

        }
    }


    Slide {
        anchors.fill: parent
        Image {
            id: imgTimeline
            source: "imgs/timeline.png"
            fillMode: Image.PreserveAspectFit
            smooth: true
            anchors.fill: parent
        }
    }


    Slide {
        title: "Motivations"
        content: [
            "Desire to really be an open project",
            " Meego",
            "Fix problems with the 2009 contribution model",
            "Fix problems with the development workflow"
        ]
    }

}
