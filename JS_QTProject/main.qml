CustomComponent.qml:
import QtQuick 2.0
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Canvas {
        id: mycanvas
        anchors.fill: parent
        property int xStep: width / 6
        property int yStep: height / 5
        onPaint: {
        var ctx = getContext("2d");
        ctx.clearRect(0, 0, width, height);
        ctx.fillStyle = Qt.rgba(1, 0, 0, 1); // Красный
        ctx.beginPath()
        ctx.moveTo(2 * xStep, yStep);
        ctx.lineTo(3 * xStep, 2 * yStep);
        ctx.lineTo(4 * xStep, yStep);
        ctx.lineTo(5 * xStep, 2 * yStep);
        ctx.lineTo(3 * xStep, 4 * yStep);
        ctx.lineTo(xStep, 2 * yStep);
        ctx.lineTo(2 * xStep, yStep);
        ctx.closePath()
        ctx.lineWidth = 15;
        ctx.stroke();
        ctx.fill()
        }
    }

}
