import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import Elevator 1.0

ApplicationWindow{
    width: 800
    height: 752
    visible: true
    title: qsTr("Elevator")

    Elevator {
        id: elevator
    }

    Button {
        id: button
        x: 30
        y: 20
        width: 21
        height: 241
    }

    Button {
        id: button1
        x: 50
        y: 20
        width: 201
        height: 21
        text: qsTr("Name")
        autoRepeat: true
    }

    Button {
        id: leftDoor
        x: 50
        y: 40
        width: 101
        height: 201
        text: qsTr("leftDoor")
    }

    Button {
        id: rightDoor
        x: 150
        y: 40
        width: 100
        height: 201
        text: qsTr("rightDoor")
    }

    Button {
        id: button5
        x: 50
        y: 240
        width: 201
        height: 21
        flat: false
    }

    Button {
        id: floor
        x: 51
        y: 319
        text: qsTr("Floor")
    }

    Button {
        id: startBtn
        x: 56
        y: 473
        text: qsTr("Start")
        enabled: !elevator.validUse
        onClicked: elevator.on_startBtn_clicked()
    }

    Button {
        id: shutDownBtn
        x: 170
        y: 473
        text: qsTr("Shut down")
        onClicked: elevator.on_closeBtn_clicked()
    }

    Button {
        id: btn_l1
        x: 635
        y: 33
        width: 43
        height: 40
        text: qsTr("1")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l2
        x: 702
        y: 33
        width: 43
        height: 40
        text: qsTr("2")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l3
        x: 635
        y: 94
        width: 43
        height: 40
        text: qsTr("3")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l4
        x: 702
        y: 94
        width: 43
        height: 40
        text: qsTr("4")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l5
        x: 635
        y: 156
        width: 43
        height: 40
        text: qsTr("5")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l6
        x: 702
        y: 156
        width: 43
        height: 40
        text: qsTr("6")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: openBtn
        x: 618
        y: 240
        width: 71
        height: 40
        text: qsTr("Open")
        enabled: elevator.validUse
    }

    Button {
        id: closeBtn
        x: 702
        y: 240
        width: 72
        height: 40
        text: qsTr("Close")
        enabled: elevator.validUse
    }

    Button {
        id: btn_l1_arrow
        x: 420
        y: 590
        width: 31
        height: 31
        text: qsTr("↑")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelUpList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l6_darrow
        x: 420
        y: 80
        width: 31
        height: 31
        text: qsTr("↓")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelDownList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l5_uarrow
        x: 420
        y: 170
        width: 31
        height: 31
        text: qsTr("↑")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelUpList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l5_darrow
        x: 420
        y: 200
        width: 31
        height: 31
        text: qsTr("↓")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelDownList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l4_uarrow
        x: 420
        y: 270
        width: 31
        height: 31
        text: qsTr("↑")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelUpList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l4_darrow
        x: 420
        y: 300
        width: 31
        height: 31
        text: qsTr("↓")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelDownList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l3_uarrow
        x: 420
        y: 370
        width: 31
        height: 31
        text: qsTr("↑")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelUpList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l3_darrow
        x: 420
        y: 400
        width: 31
        height: 31
        text: qsTr("↓")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelDownList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l2_uarrow
        x: 420
        y: 470
        width: 31
        height: 31
        text: qsTr("↑")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelUpList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: btn_l2_darrow
        x: 420
        y: 500
        width: 31
        height: 31
        text: qsTr("↓")
        enabled: elevator.validUse
        onClicked: {
            elevator.addPanelDownList(parseInt(text))

            elevatorBtn.x = elevator.elevatorX
            elevatorBtn.y = elevator.elevatorY
        }
    }

    Button {
        id: elevatorBtn
        x: 300
        y: 550
        width: 101
        height: 101
        text: qsTr("Elevator")
        enabled: elevator.validUse
        Behavior on y {
            SmoothedAnimation {
                id : elevatorAnimation
                velocity: 100
            }
        }
    }

    Button {
        id: button2
        x: 249
        y: 20
        width: 21
        height: 241
    }

    TextField {
        id: textField
        x: 209
        y: 319
        width: 29
        height: 40
        text: parseInt(7 - elevatorBtn.y/100)
        placeholderText: qsTr("Text Field")
        enabled: elevator.validUse
    }
}
