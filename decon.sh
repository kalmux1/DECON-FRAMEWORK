
#!/bin/bash
# This is a bash Script that you can use for DOMAIN RECONNESSINCE 

# Colour Db
# Reset
Normal='\033[0m'       # Text Reset
# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White
Orange='\033[0;33m'       # Orange

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

#banner
clear
echo -e "$Red
             ██████████   ██████████   █████████     ███████    ██████   █████
            ░░███░░░░███ ░░███░░░░░█  ███░░░░░███  ███░░░░░███ ░░██████ ░░███ 
             ░███   ░░███ ░███  █ ░  ███     ░░░  ███     ░░███ ░███░███ ░███ 
             ░███    ░███ ░██████   ░███         ░███      ░███ ░███░░███░███ 
             ░███    ░███ ░███░░█   ░███         ░███      ░███ ░███ ░░██████ 
             ░███    ███  ░███ ░   █░░███     ███░░███     ███  ░███  ░░█████ 
             ██████████   ██████████ ░░█████████  ░░░███████░   █████  ░░█████
            ░░░░░░░░░░   ░░░░░░░░░░   ░░░░░░░░░     ░░░░░░░    ░░░░░    ░░░░░ 
                                                                        $Normal  "
echo -e "$Red                            ＣＲＥＡＴＥＤ ＢＹ ＫＡＬＭＵＸ$Normal"                                                                    
echo " "
echo " "
path=$(pwd)
test -d asset
if [[ $? != 0 ]]
then
    mkdir $path/asset
    if [[ $? != 0 ]]
    then
        echo " "
        echo -e "$BIRed ROOT PERMISSION DENIED , MAKE SURE YOU RUN THIS TOOL WITH SUDO $Normal"
        echo " "
        exit 1
    fi
fi
chars="/-\|"  
(    
while :; do
    for (( i=0; i<${#chars}; i++ )); do
        sleep 0.1
        echo -en "$BIBlue           CHECHING INTERNET CONNECTIVITY....${chars:$i:1}" "\r"
    done
done
) &     
animation_pid=$!
# INTERNET CONNECTIVITY
internet_chk=$(ping -c 1 8.8.8.8 > /dev/null)
if [[ $? != 0 ]]
then
    kill $animation_pid >/dev/null 2>&1
    echo -e "\033[K"
    echo -e " $Red      WEAK INTERNET CONECTION $Normal "
    echo " "
    exit 1
else 
    sleep 2
    kill $animation_pid >/dev/null 2>&1
    echo -e "\033[K"
    echo -e " $BIGreen      STRONG INTERNET CONNECTION $Normal "
    sleep 2
    clear
    echo " "

    echo -e " $BICyan          CHECKING REQUIRED DEPENDENCIES $Normal"
    echo " "
    echo " "
    sleep 0.7
    echo -e "                   $BIPurple [+] PING"
    sleep 1.5 

    #  PING PACKAGE 
    ping_chk=$(which ping)
    if [[ $? != 0 ]]
    then
        echo -e " $BIRed DEPENDENCIES ERROR $Normal "
        echo " "
        exit 1
    fi 
    echo -e "                   $BIPurple [+] WHOIS"
    sleep 1.5

    #  WHOIS PACKAGE
    whois_chk=$(which whois)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pip=$(sudo apt-get install whois -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 
    echo -e "                   $BIPurple [+] NAMP"
    sleep 1.5 

    #  NMAP PACKAGE
    nmap_chk=$(which nmap)
    if [[ $? != 0 ]]
    then
        # Insatlling nmap if not installed
        pip=$(sudo apt-get install nmap -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 
    echo -e "                   $BIPurple [+] AMASS OWASP"
    sleep 1.5 

    #  AMASS PACKAGE 
    amass_chk=$(which amass)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pip=$(sudo apt-get install amass -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 
    sleep 2
    clear
    # DOMAIN NAME VALIDATION FUNCTION
    dvld()
    {
        echo " "
        echo " "
        read -e -p $'\033[1;93m Enter A Valid Domain Name :- \033[0m' domain
        echo " "
        echo " "
        chars="/-\|"  
        (    
        while :; do
            for (( i=0; i<${#chars}; i++ )); do
                sleep 0.1
                echo -en "$BIBlue   DOMAIN VALIDATION....${chars:$i:1}" "\r"
            done
        done
        ) &     
        animation_pid=$!

        # PINGING TO THE DOMAIN TO GET THE IPv4 ADDRESS
        ping=$(ping -4 -c 1 $domain)
        if [[ $? != 0 ]]
        then
            kill $animation_pid >/dev/null 2>&1
            echo -e "\033[K"
            echo -e " $BIRed      INVALID DOMAIN OR DEAD DOMAIN $Normal"
            echo " "
            sleep 0.9
            clear
            dvld
        else 
            sleep 2
            kill $animation_pid >/dev/null 2>&1
            echo -e "\033[K"
            echo -e " $BIGreen      VALID DOMAIN $Normal "
            ping_store=$(ping -c 1 $domain > asset/log.txt)
            sleep 2
            clear
        fi
    }
    # CALLING THE DOMAIN NAME VALIDATION FUNCTION
    dvld
    
    echo " "
    echo " "
    # IP EXTRACTION
    IP=$(awk 'NR==1{print $3}' asset/log.txt | sed 's/[\(\)]//g')
    # DOMAIN & IP TOP BANNER
    dip_banner()
    {
        echo -e " $BIYellow DOMAIN NAME :-$Normal $BICyan $domain  $Normal $BIYellow DOMAIN IP :-$Normal $BICyan $IP $Normal "
        echo " "
    }

    # USER CHOICE IN { WHOIS | NMAP | AMASS }
    choice()
    {
        echo " "
        echo " "
        echo -e "                        $Red  [1]$Normal $Purple WHOIS $Normal"
        echo -e "                        $Red  [2]$Normal $Purple AMASS $Normal"
        echo -e "                        $Red  [3]$Normal $Purple NMAP $Normal"
        echo " "
        echo " "
        echo " "
        read -e -p $'\033[1;91m [+]\033[0m \033[1;94mCHOOSE ONE OPTION :- \033[0m' opt
        echo " "
        echo " "
        case $opt in 
        "1") 
            # WHOIS ENUMRATION
            clear
            dip_banner
            raw_WHOIS=$(whois $domain > asset/dmninf.txt)
            
            # DISPLAYING WHOIS INFORMATION
            echo -e " $BIPurple                      WHOIS INFORMATION  $Normal"
            echo -e " $BIGreen    "
            cat asset/dmninf.txt
            echo -e " $Normal "
            ;;
        "2") 
            # AMASS
            ;;
        "3") 
            # NMAP HOST DISCOVERY & PORT ENUMRATAION
            ;;
         *) 
           echo -e "$BIRed                INVALID OPTION $Normal"
           sleep 0.7
           clear
           echo " "
           dip_banner
           choice
           ;;
        esac
    }
    # MAIN FUNCTION CALLING
    dip_banner # BANNER FOR DOMAIN NAME AND IP ADDRESS
    choice  # calling choice function
fi
