#!/bin/bash
#######################################################################################
#Script Name    :run.sh
#Description    :restart and start services
#Args           :       
#Authors        :Ayoub Aqlzim + yassin slati(aka Dolfine)
#License       : NO_LICENSE	/ Open source
#######################################################################################

nginx -t
service nginx start

bash