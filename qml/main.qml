/****************************************************************************
**
** Copyright (C) 2015 The Qt Company Ltd.
** Contact: http://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Gamepad module
**
** $QT_BEGIN_LICENSE:BSD$
** You may use this file under the terms of the BSD license as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/

import QtQuick 2.2
import QtQuick.Controls 1.1
import QtGamepad 1.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 800
    height: 600
    title: qsTr("GamePad")

    Rectangle {
        id: mainRect
        anchors.fill: parent
        anchors.margins: 20
        Column {
            Row {
                Label {
                    id: leftXLabel
                    text: "LeftX"
                    width: mainRect.width*0.2
                }

                Label {
                    id: leftXValue
                    text: gamepad.axisLeftX
                    width: mainRect.width*0.2
                }


                Slider {
                    id: leftXSlider
                    minimumValue: -1
                    maximumValue: 1
                    value: gamepad.axisLeftX
                    width: mainRect.width*0.6
                }
            }

            Row {
                Label {
                    id: leftYLabel
                    text: "LeftY"
                    width: mainRect.width*0.2
                }

                Label {
                    id: leftYValue
                    text: gamepad.axisLeftY
                    width: mainRect.width*0.2
                }

                Slider {
                    id: leftYSlider
                    minimumValue: -1
                    maximumValue: 1
                    value: gamepad.axisLeftY
                    width: mainRect.width*0.6
                }
            }

            Row {
                Label {
                    id: rightXLabel
                    text: "RightX"
                    width: mainRect.width*0.2
                }

                Label {
                    id: rightXValue
                    text: gamepad.axisRightX
                    width: mainRect.width*0.2
                }

                Slider {
                    id: rightXSlider
                    minimumValue: -1
                    maximumValue: 1
                    value: gamepad.axisRightX
                    width: mainRect.width*0.6
                }
            }

            Row {
                Label {
                    id: rightYLabel
                    text: "RightY"
                    width: mainRect.width*0.2
                }

                Label {
                    id: rightYValue
                    text: gamepad.axisRightY
                    width: mainRect.width*0.2
                }

                Slider {
                    id: rightYSlider
                    minimumValue: -1
                    maximumValue: 1
                    value: gamepad.axisRightY
                    width: mainRect.width*0.6
                }
            }

        }
    }

    Connections {
        target: GamepadManager
        onGamepadConnected: gamepad.deviceId = deviceId
    }

    Gamepad {
        id: gamepad
        deviceId: GamepadManager.connectedGamepads.length > 0 ? GamepadManager.connectedGamepads[0] : -1
    }
}
