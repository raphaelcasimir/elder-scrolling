#/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Available pointing devices:${normal}"
xinput --list | awk -F '↳|id' '/⎜   /{print $2}'
echo ''

read -p "${bold}Enter your pointing device distinct name, ex: for 'Logitech M570' you can enter M570 if you have multiple Logitech devices:${normal}`echo '\n> '`" name
gawk -i inplace -v name="${name}" -F '/' '/\/\ /{gsub($2,name,$0);}{print;}' ./util/get_mouseID.sh