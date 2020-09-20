#!/bin/bash
#######################################################################################
#Script Name    :check_env.sh
#Description    :check if docker installed localy
#Args           :       
#Authors        :Ayoub Aqlzim + yassin slati(aka Dolfine)
#License       : NO_LICENSE	/ Open source
#######################################################################################

if which docker > /dev/null 2>&1;
then
        echo -e "\033[1;32mDocker exist yey\033[0m"
else
        echo -e "\033[1;32mInitializing Env..\033[0m"
        sleep 3
        echo -ne '###                 \033[1;34m(33%)\033[0m\r'
        sleep 3
        echo -ne '#########           \033[1;34m(50%)\033[0m\r'
        sleep 3
        echo -ne '############        \033[1;34m(67%)\033[0m\r'
        sleep 3
        echo -ne '################    \033[1;34m(100%)\033[0m\r'
        sleep 1
        echo -e ""
        ./install.sh
fi