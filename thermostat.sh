option="${1}"
tempc="${2}"

mac="00:1A:22:07:05:AC"

case ${option} in

	-temp)
			echo "Setting thermostat to $2"
			./eq3/eq3.exp mac temp tempc
			;;

	*)

			echo "Max thermostat control CLI"

esac
