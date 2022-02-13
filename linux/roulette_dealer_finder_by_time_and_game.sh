#!/bin/bash
# this script operates on file names that use the following naming convention: 0313_win_loss_player_data
# this script takes a text file structure where each row is a time-part of a day, and columns represent the first and last name of various dealers working differnt games at a casino
# this script outputs the dealer running a roulette table at a casino
# in the directory with the dealer schedule, run this commmand by passing to arguments: MONTH-DAY as 4 numeric values and daypart as a string "00:00:00 AM/PM"
# sh roulette_dealer_finder_by_time.sh 0313 '04:00:00 PM'
# $1 is the param of the numeric MONTH-DAY of the a casino dealer schedule file name
# $2 is the daypart of the dealer schedule 
# #5 and $6 are the column values for Roulette_Dealer_FNAME LAST	
cat $1_Dealer_schedule | awk -F" " '{print $1, $2, $5,$6}'| grep "$2"



