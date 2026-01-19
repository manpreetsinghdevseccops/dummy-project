#!/bin/bash
 
 echo "Generating .env with param dev for service dummy-project"
 
 aws ssm get-parameters-by-path --path "/dev/dummy-project/" --with-decryption    --region undefined --query="Parameters[*].[Name, Value]"    --output text |
   while read line
   do
     name=$(echo ${line}} | cut -f 1 -d ' ' | sed -e "s//dev/dummy-project///g")
     value=$(echo ${line} | cut -f 2 -d ' ')
     echo "${name}=${value}" >> .env
   done
 ls -lart
 npm start
