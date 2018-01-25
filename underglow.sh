maxbrightness()
{
	for i in 1 2 3 4 5 6 7 8 9 10
	do
	../433Utils/RPi_utils/codesend 4337669
	done
}

minbrightness()
{
	for i in 1 2 3 4 5 6 7 8 9 10
	do
	../433Utils/RPi_utils/codesend 4337670
	done
}


option="${1}" 
case ${option} in 
   -tp)  
		echo "Toggling underglow..."
		../433Utils/RPi_utils/codesend 4337665
		;; 
   -bp)
		echo "Increasing underglow brightness by 10%..."
		../433Utils/RPi_utils/codesend 4337669   
      ;;
   -bm)
		echo "Decreasing underglow brightness by 10%..."
		../433Utils/RPi_utils/codesend 4337670  
      ;;
   -p25)
		echo "Setting underglow brightness to 25%..."
		../433Utils/RPi_utils/codesend 4337673  
      ;;
   -p50)
		echo "Setting underglow brightness to 50%..."
		../433Utils/RPi_utils/codesend 4337672  
      ;;
   -p100)
		echo "Setting underglow brightness to 100%..."
		../433Utils/RPi_utils/codesend 4337671  
      ;;
   -pmax)
		echo "Setting underglow brightness to maximum..."
		maxbrightness 
      ;; 	
   -pmin)
		echo "Setting underglow brightness to minimum..."
		minbrightness 
      ;;	  
   *)
		echo "Max LED underglow control CLI"
		echo "You can use the following commands:"
		echo "-tp 			Toggle underglow power"
		echo "-bp 			Increase underglow brightness by 10%"
		echo "-bm 			Decrease underglow brightness by 10%"
		echo "-p25/50/100 	Set underglow brightness to X%"
		echo "-pmax 		Maximum brightness"
		echo "-pmin 		Minimum brightness"
      
      ;; 
esac