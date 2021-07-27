#! /bin/bash

# For each service with a valid compose.yml: pull latest images, update containers, remove dangling images

for dir in services/*/
do
    #echo "---Pulling ${dir%*/}---"
    if [ -e ${dir}compose.yml ]
    then
        #echo ---Pulling `basename $dir`---
        docker-compose -f ${dir}compose.yml pull
    fi
done

for dir in services/*/
do
    if [ -e ${dir}compose.yml ]
    then
        #echo ---Creating `basename $dir`---
        docker-compose -f ${dir}compose.yml up -d --remove-orphans
    fi
done

#echo ---Pruning---
echo "Y" | docker image prune # Answers "Yes" automatically to prompt

