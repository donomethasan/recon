#!/bin/sh
red="`tput setaf 1`"
norm="`tput sgr0`"
bold="`tput bold`"
green="`tput setaf 2`"
echo "   ___         ___             __    _____         __       "
echo "  / _ \___ ___/ (_)______ ____/ /_  / __(_)__  ___/ /__ ____"
echo "${red}${bold} / , _/ -_) _  / / __/ -_) __/ __/ / _// / _ \/ _  / -_) __/${norm}"
echo "/_/|_|\__/\_,_/_/_/  \__/\__/\__/ /_/ /_/_//_/\_,_/\__/_/   "
echo
echo " [+] by ${bold}@Prial261${norm}"
echo " [+] Usage:"
echo "	  $ comb subdomains.txt payload.txt > urls.txt"
echo " 	  $./redirect.sh urls.txt" 
echo
filename=$1
while read urls; do
        echo "${red}${bold}Testing ==>${green} $urls ${norm}"
        echo
        curl -I -s $urls | grep -i -E "http://google.com|https://google.com|http://www.google.com|https://www.google.com|https://https:/google.com|http://1572395042|https://1572395042|http://;@www.google.com|https://;@www.google.com|http://@google.com|https://@google.com|http://https:/www.google.com/|https://https:/www.google.com/|Location: //google.com|//google.com..|location: //"
        echo "${red}[+] Done [+]${norm}"
done < $filename