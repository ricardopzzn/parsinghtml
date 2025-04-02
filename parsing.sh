#!/bin/bash

RED="\e[31m"
YELLOW="\e[93m"
GREEN="\e[92m"
ENDCOLOR="\e[0m"


echo -e "${YELLOW}                  ____                _              ${ENDCOLOR}"
echo -e "${YELLOW}                 |  _ \ __ _ _ __ ___(_)_ __   __ _  ${ENDCOLOR}"
echo -e "${YELLOW}                 | |_) / _  |  __/ __| |  _ \ / _  | ${ENDCOLOR}"
echo -e "${YELLOW}                 |  __/ (_| | |  \__ \ | | | | (_| | ${ENDCOLOR}"
echo -e "${YELLOW}                 |_|   \__,_|_|  |___/_|_| |_|\__, | ${ENDCOLOR}"
echo -e "${YELLOW}                                              |___/  ${ENDCOLOR}"





echo -e "${YELLOW}[########################################################]${ENDCOLOR}"
echo -e "                 ${YELLOW}PARSING HTML${ENDCOLOR}"
echo -e "      ${YELLOW}Modo de uso: $0 www.alvo.com.br${ENDCOLOR}"
echo -e "${YELLOW}[########################################################]${ENDCOLOR}"

if [ "$1" == "" ]
then
	echo  -e "${RED}[+] 1- $0 2-  Passe a url: www.alvo.com.br${ENDCOLOR}"

else
	echo -e "${GREEN}                 [+]Buscando Hosts...${ENDCOLOR}"
	sleep 2

	wget $1
	cat index.html | grep 'href="http'| cut -d ":" -f 2 | cut -d "/" -f 3 | cut -d '"' -f 1 | uniq -u  > dominios.txt  
	rm index.html
	sleep 2

        for url in $(cat dominios.txt);
        do
        host $url;
        done | grep "has address" > hosts.txt

        echo -e "${YELLOW}[########################################################]${ENDCOLOR}"
        echo -e "${GREEN}                 [+]Buscando Dominios...${ENDCOLOR}"
	sleep 2
	echo -e "                 ${YELLOW}Dominios do: $1  ${ENDCOLOR}"
        sleep 2
        cat dominios.txt

        echo -e "${YELLOW}[########################################################]${ENDCOLOR}"
	echo -e "${GREEN}                 [+]Buscando Hosts...${ENDCOLOR}"
	sleep 2
        echo -e "                 ${YELLOW}Hosts do: $1  ${ENDCOLOR}"
        sleep 2
        cat hosts.txt
	fi

