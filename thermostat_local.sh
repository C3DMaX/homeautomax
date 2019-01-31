#!/bin/sh
option="${1}"
tempc="${2}"

mac="00:1A:22:07:05:AC"

case ${option} in

	-temp)
			echo "Setting thermostat to $2 C°"
			../eq3/eq3.exp 00:1A:22:07:05:AC temp $2
			;;

	-status)
			echo "Fetching current thermostat settings..."
			../eq3/eq3.exp 00:1A:22:07:05:AC sync
			;;


	*)

			echo "Max thermostat control CLI"
			echo "Usage:"
			echo "-temp N.m		Set thermostat to N.m degrees celsius"
			echo "-status 		Fetch current thermostat settings"

esac
