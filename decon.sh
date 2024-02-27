#!/bin/bash

# This is a bash Script that you can use for DOMAIN RECONNESSINCE 
# CODED BY NITIN JAISWAL AKA KALMUX


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


    echo -e "                   $BIRed[+]$Normal$BIPurple PING $Normal"
    sleep 1.5 

    #  PING PACKAGE 
    ping_chk=$(which ping)
    if [[ $? != 0 ]]
    then
        echo -e " $BIRed DEPENDENCIES ERROR $Normal "
        echo " "
        exit 1
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple WHOIS $Normal"
    sleep 1.5

    #  WHOIS PACKAGE
    whois_chk=$(which whois)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install whois -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple NMAP $Normal"
    sleep 1.5 

    #  NMAP PACKAGE
    nmap_chk=$(which nmap)
    if [[ $? != 0 ]]
    then
        # Insatlling nmap if not installed
        pkg=$(sudo apt-get install nmap -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple WHATWEB $Normal"
    sleep 1.5 

    #  WHATWEB PACKAGE 
    whatweb_chk=$(which whatweb)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install whatweb -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 

    
    echo -e "                   $BIRed[+]$Normal$BIPurple FFUF $Normal"
    sleep 1.5

    #  FFUF PACKAGE
    ffuf_chk=$(which ffuf)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install ffuf -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple WORDLISTS $Normal"
    sleep 1.5

    #  WORDLIST PACKAGE
    dirbuster_chk=$(which dirbuster)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install dirbuster -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple NIKTO $Normal"
    sleep 1.5

    #  NIKTO PACKAGE
    nikto_chk=$(which nikto)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install nikto -y)   
        if [[ $? != 0 ]]
        then 
            echo -e " $BIRed DEPENDENCIES ERROR $Normal "
            echo " "
            exit 1
        fi
    fi 


    echo -e "                   $BIRed[+]$Normal$BIPurple AMASS $Normal"
    sleep 1.5

    #  AMASS PACKAGE
    amass_chk=$(which amass)
    if [[ $? != 0 ]]
    then
        # Insatlling whois if not installed
        pkg=$(sudo apt-get install amass -y)   
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
        echo -e "$BICyan      ENTER A VALID DOMAIN IN THE FORMAT {$Normal$BIYellow http://_______ | https://______$Normal $BICyan}$Normal"
        echo " "
        read -e -p $'\033[1;91m      ========> \033[0m' domain
        echo " "
        echo " "
        chars="/-\|"  
        (    
        while :; do
            for (( i=0; i<${#chars}; i++ )); do
                sleep 0.1
                echo -en "$BIBlue       DOMAIN VALIDATION....${chars:$i:1}" "\r"
            done
        done
        ) &     
        animation_pid=$!

        # MAIN URL EXTRACTION FOR HOST CHECKING
        url=$(echo "$domain" | sed -E 's/https?:\/\/([^\/]+).*/\1/')

        # PINGING TO THE DOMAIN TO GET THE IPv4 ADDRESS
        ping=$(ping -4 -c 1 $url)
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
            ping_store=$(ping -c 1 $url > asset/log.txt)
            sleep 2
            clear
        fi
    }

    # CALLING THE DOMAIN NAME VALIDATION FUNCTION
    dvld
    
    # IP EXTRACTION
    IP=$(awk 'NR==1{print $3}' asset/log.txt | sed 's/[\(\)]//g')


    # DOMAIN & IP TOP BANNER
    dip_banner()
    {
        echo " "
        echo " "
        echo -e " $BIYellow     DOMAIN NAME :-$Normal $BICyan $domain  $Normal $BIYellow DOMAIN IP :-$Normal $BICyan $IP $Normal "
        echo " "
        echo " "
    }

    # USER CHOICE IN { WHOIS | WHATWEB | DNSENUM | FFUF | NMAP }
    choice()
    {
        # PACKAGE CHOICE 
        echo " "
        echo -e "                        $BIRed  [1]$Normal $BIPurple WHOIS $Normal"
        echo -e "                        $BIRed  [2]$Normal $BIPurple WHATWEB $Normal"
        echo -e "                        $BIRed  [3]$Normal $BIPurple DNSENUM $Normal"
        echo -e "                        $BIRed  [4]$Normal $BIPurple FFUF $Normal"
        echo -e "                        $BIRed  [5]$Normal $BIPurple NIKTO $Normal"
        echo -e "                        $BIRed  [6]$Normal $BIPurple AMASS ENUM $Normal"
        echo -e "                        $BIRed  [7]$Normal $BIPurple NMAP $Normal"
        echo " "
        echo " "
        echo " "
        read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE OPTION :- \033[0m' opt
        echo " "
        echo " "

        case $opt in 

        # FIRST CASE FOR WHOIS
        "1") 
            # DOMAIN & IP BANNER
            clear
            dip_banner
            echo " "
            # WHOIS ENUMRATION
            raw_WHOIS=$(whois $url > asset/dmninf.txt)
            
            # DISPLAYING WHOIS INFORMATION
            echo " "
            echo -e " $BIPurple                      WHOIS INFORMATION  $Normal"
            echo -e " $BIGreen    "
            cat asset/dmninf.txt
            echo -e " $Normal "
        ;;

        # SECOND CASE FOR WHATWEB
        "2") 
            # DOMAIN & IP BANNER
            clear
            dip_banner
          

            # WHATWEB
            web_del=$(whatweb $domain > asset/webdel.txt)

            # DISPLAYING WHOIS INFORMATION
            echo -e " $BIPurple                      DOMAIN STRUCTURE INFORMATION  $Normal"
            echo -e " $BIGreen    "
            cat asset/webdel.txt
            echo -e " $Normal "

        ;;

        # THIRD CASE FOR DNSENUM
        "3") 
            # DOMAIN & IP BANNER
            clear
            dip_banner
           

            # DNSENUM
            echo -e "                        $Red  [1]$Normal $BIPurple QUICK SCAN [ RECOMMENDED] $Normal"
            echo -e "                        $Red  [2]$Normal $BIPurple AGGRESSIVE SCAN  $Normal"
            echo " "
            echo " "
            echo " "
            read -e -p $'\033[1;91m [+]\033[0m \033[1;94mCHOOSE ONE OPTION :- \033[0m' scan_choice
            echo " "
            echo " "

            case $choice in 

            "1")
                clear
                dnsenum --enum --noreverse $url
                ;;

            "2")
                clear
                dnsenum $url
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

        ;;

        # FOURTH CASE FOR FFUF
        "4")
            # DOMAIN & IP BANNER
            clear
            dip_banner
            echo " "

            # FFUF DIRECTORY FUZZING
            echo " "
            echo -e "                 $BIRed  [1]$Normal $BIPurple INBUILD SCAN [ RECOMMENDED] $Normal"
            echo -e "                 $BIRed  [2]$Normal $BIPurple CUSTOM SCAN  $Normal"
            echo " "
            echo " "
            echo " "
            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE OPTION FOR WORDLIST :- \033[0m' choice
            echo " "
            echo " "

            

            case $scan_choice in

                "1")
                    # DOMAIN & IP BANNER
                    clear
                    dip_banner
                    echo " "


                    # FILTER CHOOSING OPTION - YES OR NO 
                    echo " "
                    read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mDO YOU WANT TO USE FILTERS FOR STATUS CODES [\033[0m\033[1;95m y \033[1;94m|\033[0m \033[1;95mn\033[0m \033[1;94m]:-  :- \033[0m' fil_opt

                    case $fil_opt in 

                        "y")
                            # FFUF FILTER
                            clear
                            # DOMAIN & IP BANNER
                            clear
                            dip_banner

                            # FILTER CHOICES
                            echo -e "                 $Red  [1]$Normal $BIPurple 200 $Normal"
                            echo -e "                 $Red  [2]$Normal $BIPurple 300  $Normal"
                            echo -e "                 $Red  [3]$Normal $BIPurple 400  $Normal"
                            echo -e "                 $Red  [4]$Normal $BIPurple 500  $Normal"
                            echo -e "                 $Red  [5]$Normal $BIPurple ALL  $Normal"
                            echo " "
                            echo " "
                            echo " "
                            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE FILTER FOR STATUS CODE :- \033[0m' filchoice
                            echo " "
                            echo " "
                    
                            case $filchoice in 
                                "1")
                                    filter="200"
                                ;;

                                "2")
                                    filter="300"
                                ;;

                                "3")
                                    filter="400"
                                ;;

                                "4")
                                    filter="500"
                                ;;

                                "5")
                                    filter="200-209,300,400,500"
                                ;;

                                *) 
                                    # DEFAULT CASE FOR REST
                                    echo -e "$BIRed                INVALID OPTION $Normal"
                                    sleep 0.7
                                    exit 1
                                ;; 
                            esac

                            # DOMAIN & IP BANNER
                            clear
                            dip_banner
                            echo " "
                
                            # WORDLISTS
                            echo -e "               $BIYellow  WORDLISTS               WORDS $Normal"
                            echo " "
                            echo -e "          $BIRed  [1]$Normal $BIPurple WORDLIST 1.0            142168 $Normal"
                            echo -e "          $BIRed  [2]$Normal $BIPurple MEDIUM                  226054 $Normal"
                            echo -e "          $BIRed  [3]$Normal $BIPurple SMALL                   87912 $Normal"
                            echo -e "          $BIRed  [4]$Normal $BIPurple LOWECASE MEDIUM         207698 $Normal"
                            echo -e "          $BIRed  [5]$Normal $BIPurple LOWECASE SMALL          81698 $Normal"
                            echo " "
                            echo " "
                            echo " "
                            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE WORDLIST :- \033[0m' wrdlist
                            echo " "
                            echo " "

                            # INBUID WORDLIST FUZZING 

                            case $wrdlist in 

                                "1")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST 1.0
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-1.0.txt -u $domain/FUZZ -mc $filter
                                    echo -e "$Normal  "
                                ;;

                                "2")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST MEDIUM
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u $domain/FUZZ -mc $filter
                                    echo -e "$Normal  "
                                ;;

                                "3")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST SMALL
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt -u $domain/FUZZ -mc $filter
                                    echo -e "$Normal  "
                                ;;

                                "4")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST LOWERCASE MEDIUM
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt -u $domain/FUZZ -mc $filter
                                    echo -e "$Normal  "
                                ;;

                                "5")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST LOWERCASE SMALL
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-small.txt -u $domain/FUZZ -mc $filter
                                    echo -e "$Normal  "
                                ;;
     
                                *) 
                                    # DEFAULT CASE FOR REST
                                    echo -e "$BIRed                INVALID OPTION $Normal"
                                    sleep 0.7
                                    clear
                                    echo " "
                                    dip_banner
                                    choice
                                ;; 
                            esac
                            ;;

                "2")

                    # DOMAIN & IP BANNER
                    clear
                    dip_banner
                    echo " "


                    # FILTER CHOOSING OPTION - YES OR NO 
                    echo " "
                    read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mDO YOU WANT TO USE FILTERS FOR STATUS CODES [\033[0m\033[1;95m y \033[1;94m|\033[0m \033[1;95mn\033[0m \033[1;94m]:-  :- \033[0m' fil_opt

                    case $fil_opt in 

                        "y")
                            # FFUF FILTER
                            clear
                            # DOMAIN & IP BANNER
                            clear
                            dip_banner

                            # FILTER CHOICES
                            echo -e "                 $Red  [1]$Normal $BIPurple 200 $Normal"
                            echo -e "                 $Red  [2]$Normal $BIPurple 300  $Normal"
                            echo -e "                 $Red  [3]$Normal $BIPurple 400  $Normal"
                            echo -e "                 $Red  [4]$Normal $BIPurple 500  $Normal"
                            echo -e "                 $Red  [5]$Normal $BIPurple ALL  $Normal"
                            echo " "
                            echo " "
                            echo " "
                            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE FILTER FOR STATUS CODE :- \033[0m' filchoice
                            echo " "
                            echo " "
                    
                            case $filchoice in 
                                "1")
                                    filter="200"
                                ;;

                                "2")
                                    filter="300"
                                ;;

                                "3")
                                    filter="400"
                                ;;

                                "4")
                                    filter="500"
                                ;;

                                "5")
                                    filter="200-209,300,400,500"
                                ;;

                                *) 
                                    # DEFAULT CASE FOR REST 
                                    echo -e "$BIRed                INVALID OPTION $Normal"
                                    sleep 0.7
                                    clear
                                    echo " "
                                    dip_banner
                                    choice
                                ;; 
                            esac
                        
                            # DOMAIN & IP BANNER
                            clear
                            dip_banner
                            echo " "

                            # CUSTOM WORDLIST FUZZING 
                            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mENTER THE PATH OF YOUR WORDLIST :- \033[0m' wrdlist_pth 

                            wrdlist_vld=$(find $wrdlist_pth)
                            if [[ $? != 0 ]]
                            then 
                                echo -e " $BIRed WORDLIST DOES NOT EXIST $Normal"
                                sleep 0.7
                                exit 1
                            else
                                # DOMAIN & IP BANNER
                                clear
                                dip_banner
                                echo " "

                                # FUZZING USING CUSTOM WORDLIST
                                echo -e "$BIGreen  "
                                ffuf -w $wrdlist_pth -u $domain/FUZZ -mc $filchoice
                                echo -e "$Normal  "
                            fi
                        ;;
     
                        *)
                            # DEFAULT CASE FOR REST 
                            echo -e "$BIRed                INVALID OPTION $Normal"
                            sleep 0.7
                            clear
                            echo " "
                            dip_banner
                            choice
                        ;;    
                    esac
                ;;

                # NO FILTER CASE FOR FFUF

                "n")

                case $choice in

                    "1")
                        # DOMAIN & IP BANNER
                            clear
                            dip_banner
                            echo " "
                
                            # WORDLISTS
                            echo -e "               $BIYellow  WORDLISTS               WORDS $Normal"
                            echo " "
                            echo -e "          $BIRed  [1]$Normal $BIPurple WORDLIST 1.0            142168 $Normal"
                            echo -e "          $BIRed  [2]$Normal $BIPurple MEDIUM                  226054 $Normal"
                            echo -e "          $BIRed  [3]$Normal $BIPurple SMALL                   87912 $Normal"
                            echo -e "          $BIRed  [4]$Normal $BIPurple LOWECASE MEDIUM         207698 $Normal"
                            echo -e "          $BIRed  [5]$Normal $BIPurple LOWECASE SMALL          81698 $Normal"
                            echo " "
                            echo " "
                            echo " "
                            read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mCHOOSE ONE OPTION :- \033[0m' wrdlist
                            echo " "
                            echo " "

                            # INBUID WORDLIST FUZZING 

                            case $wrdlist in 

                                "1")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST 1.0
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-1.0.txt -u $domain/FUZZ
                                    echo -e "$Normal  "
                                ;;

                                "2")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST MEDIUM
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u $domain/FUZZ
                                    echo -e "$Normal  "
                                ;;

                                "3")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST SMALL
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-2.3-small.txt -u $domain/FUZZ
                                    echo -e "$Normal  "
                                ;;

                                "4")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST LOWERCASE MEDIUM
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-medium.txt -u $domain/FUZZ
                                    echo -e "$Normal  "
                                ;;

                                "5")
                                    # DOMAIN & IP BANNER
                                    clear
                                    dip_banner
                                    echo " "

                                    # WORDLIST LOWERCASE SMALL
                                    echo -e "$BIGreen  "
                                    ffuf -w /usr/share/wordlists/dirbuster/directory-list-lowercase-2.3-small.txt -u $domain/FUZZ
                                    echo -e "$Normal  "
                                ;;
     
                                *) 
                                    # DEFAULT CASE FOR REST
                                    echo -e "$BIRed                INVALID OPTION $Normal"
                                    sleep 0.7
                                    clear
                                    echo " "
                                    dip_banner
                                    choice
                                ;; 
                            esac
                
                    ;;

                    "2")
                        # DOMAIN & IP BANNER
                        clear
                        dip_banner
                        echo " "

                        # CUSTOM WORDLIST FUZZING 
                        read -e -p $'\033[1;91m      [+]\033[0m \033[1;94mENTER THE PATH OF YOUR WORDLIST :- \033[0m' wrdlist_pth

                        wrdlist_vld=$(find $wrdlist_pth)
                        if [[ $? != 0 ]]
                        then 
                            echo -e " $BIRed WORDLIST DOES NOT EXIST $Normal"
                            sleep 0.7
                            exit 1
                        else
                            # DOMAIN & IP BANNER
                            clear
                            dip_banner
                            echo " "

                            # FUZZING USING CUSTOM WORDLIST
                            echo -e "$BIGreen  "
                            ffuf -w $wrdlist_pth -u $domain/FUZZ
                            echo -e "$Normal  "
                        fi
                    ;;
     
                    *)
                        # DEFAULT CASE FOR REST 
                        echo -e "$BIRed                INVALID OPTION $Normal"
                        sleep 0.7
                        clear
                        echo " "
                        dip_banner
                        choice
                    ;;    
                esac
                ;;

                *)
                    # DEFAULT CASE FOR REST 
                    echo -e "$BIRed                INVALID OPTION $Normal"
                    sleep 0.7
                    clear
                    echo " "
                    dip_banner
                    choice
                ;;    
            esac
        ;;

        # FIFTH CASE FOR NIKTO
        "5")
           # DOMAIN & IP BANNER
            clear
            dip_banner
            echo " "
            
            # DISPLAYING NIKTO INFORMATION
            echo -e " $BIPurple                      NIKTO INFORMATION  $Normal"
            echo " "
            echo -e " $BIGreen    "
            nikto -h $domain
            echo -e " $Normal "
        ;;

        # SIXTH CASE FOR AMASS ENUMERATION ===> SUBDOMAIN ENUMERATION
        "6")
            # DOMAIN & IP BANNER
            clear
            dip_banner
            echo " "
            
            # DISPLAYING SUBDOMAIN INFORMATION
            echo -e " $BIPurple                      SUBDOMAIN ENUMERATION  $Normal"
            echo " "
            echo -e " $BIGreen    "
            amass enum -d $url
            echo -e " $Normal "
        ;;

        # SEVENTH CASE FOR NS LOOKUP
        "7")
            # DOMAIN & IP BANNER
            clear
            dip_banner
            echo " "
        ;;

        *)
            # DEFAULT CASE FOR REST 
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
