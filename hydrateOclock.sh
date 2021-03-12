#!/bin/bash
 
clear

frames=(" 
     TIME to drink some WATER 💧! Stay ~HYDRATED~
     Reminder to stay hydrated! (Press any key to close...)
                   ___
                 (Q)__
                 |.| 
     |           / / |
     |_____-----_____|
     |               |
     |  ○            |
     |               |
     |               |
     |    .      ○   |
     |               |
     |         o     |
     |   o           |
     '---_________---'"
     " 
     TIME to drink some WATER 💧! Stay ~HYDRATED~
     Reminder to stay hydrated! (Press any key to close...)
                   ___
                 (Q)__
                | } 
     |           \.\ |
     |__+---___---___|
     |               |
     |    .          |
     |           0   |
     |           o   |
     |               |
     |               |
     |   0           |
     |       o       |
     '---_________---'"
     " 
     TIME to drink some WATER 💧! Stay ~HYDRATED~
     Reminder to stay hydrated! (Press any key to close...) 
                   ___
                 (Q)__
                 {.| 
     |           / / |
     |----_______-+--|
     |               |
     |      ○        |
     |               |
     |               |
     |   o     .     |
     |               |
     |        0      |
     |        o      |
     '---_________---'"
     " 
     TIME to drink some WATER 💧! Stay ~HYDRATED~
     Reminder to stay hydrated! (Press any key to close...) 
                   ___
                 (Q)__
                ! !  
     |           \.\ |
     |___+-+___---___|
     |         .     |
     |        0      |
     |               |
     |               |
     |        o      |
     | ○             |
     |       .       |
     |               |
     '---_________---'"
     " 
     TIME to drink some WATER 💧! Stay ~HYDRATED~
     Reminder to stay hydrated! (Press 'Q' to close...) 
                   ___
                 (Q)__
                 l l 
     |           / / |
     |_____---+-_+___|
     |             ○ |
     |               |
     |               |
     |       .       |
     |               |
     |   ○           |
     |               |
     |         o     |
     '---_________---'")
 
count(){
  spin &
  pid=$!
 
#   for i in `seq 1 2`
#   do
  while : ; do
    read -u 1 -n 1 -s key
    if [[ $key = "q" ]] ; then
        exit
    fi
    sleep 1;
  done
 
  kill $pid  
}
 
spin(){
  while [ 1 ]
  do 
    for i in "${frames[@]}"; 
    do 
    #   echo -ne "\r$i";
      echo -ne "\r$i"
      sleep 0.2;
      clear
    done;
  done
}
 
count