#!/bin/bash
        Server1hitcount=0
        Server2hitcount=0
        Server3hitcount=0
       for ((i = 1; i <= 90; i++))
       do
             Number="$(curl http://localhost:8081 | grep Instance | awk '{print $2})"
             echo $Number
             if [ $Number = "1." ]
             then
             let "Server1hitcount=Server1hitcount+1"
             elif [ $Number = "2." ] 
             then
              let "Server2hitcount=Server2hitcount+1"
             elif [ $Number = "3." ] 
             then
             let "Server3hitcount=Server3hitcount+1"
             fi
        done 
             echo "Out of 100 requests Server1 is Hit:" $Server1hitcount
             echo "Out of 100 requests Server2 is Hit:" $Server2hitcount
             echo "Out of 100 requests Server3 is Hit:" $Server3hitcount
