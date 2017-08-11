import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle{
    Button{
        width: 20
        onClicked : {
            Context.sendActionToCpp("activate", 'maChaineDuPlateau')
        }
    }

    BtnStyle {
        id: clearBtn
        y: 40
        text: "clear"
    }
    BtnStyle {
        id: goBtn
        y: 80
        text: "go"
    }
    Slider {
        x:150
        id: slideBtn
        value: 0.5
        maximumValue: 5.0
        stepSize: 1.0
    }

    PlateauVie {
        x : 120
        y : 40
        nbCellX : 24
        nbCellY : 20
        coteCell : 25
    }

}
