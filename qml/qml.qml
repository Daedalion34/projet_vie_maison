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
        style: ButtonStyle
    }



    PlateauVie {
        x : 120
        y : 20
        nbCellX : 24
        nbCellY : 20
        coteCell : 25
    }

}
