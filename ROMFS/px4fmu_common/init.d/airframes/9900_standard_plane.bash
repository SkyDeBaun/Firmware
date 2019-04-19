#!/bin/sh
#
# @name Standard Plane
#
# @type Standard Plane
# @class Plane
#
# @output MAIN1 aileron
# @output MAIN2 elevator
# @output MAIN3 throttle
# @output MAIN4 rudder
# @output MAIN5 flaps
# @output MAIN6 gear
#
# @output AUX1 feed-through of RC AUX1 channel
# @output AUX2 feed-through of RC AUX2 channel
# @output AUX3 feed-through of RC AUX3 channel
#
# @maintainer Lorenz Meier <lorenz@px4.io>
#

sh /etc/init.d/rc.fw_defaults

if [ $AUTOCNF = yes ]
then
	param set PWM_AUX_RATE 50
	param set PWM_RATE 50
fi

set MIXER A_CUSTOM_TEST

# Rate must be set by group (see pwm info).
# Throttle is in the same group as servos.
