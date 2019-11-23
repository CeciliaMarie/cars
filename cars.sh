#! /bin/bash
# cars.sh
# Cecilia Marie Abrahamsson

option=1
while [ "$option" -ne "3" ]
do 
       	echo "1. If you want to enter a new car"
	echo "2. If you want to display the list of cars"
	echo "3. If you want to quit"     
	echo -n "Enter your choose (1,2 or 3): "; read option
	 case "$option" in
	    "1") echo "Enter the year of the car: "
		    read year
		    echo "Enter the make of the car: "
		    read make
		    echo "Enter the model of the car: "
		    read model
		    new_car="$year:$make:$model"
		    echo "$new_car" >> My_old_cars;;
   	    "2") sort My_old_cars;;
	    "3") break;;
	    *) echo "Sorry, you entered an invalid input.";;	    
    	esac
done
