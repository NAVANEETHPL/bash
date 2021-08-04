#!/data/data/com.termux/files/usr/bin/bash

cd ~
if [ -f ".bash1" ]
then
rm .bash1
fi
touch .bash1

# Inserting terminal name
echo 
read -p $'\e[36m[*] \e[33m Enter Your Terminal Name:\e[32m ' tern
echo
sleep 2

# Setting  terminal
while :
do
echo
echo
echo "=================================="
echo "     Choose your Terminal name "
echo "=================================="
echo

# 1
echo -e "\e[31m [\e[32m01\e[31m]\e[m"
echo -e "\e[34m┌>[\e[35m $tern \e[34m]-[\e[35m~\e[34m]\e[m
\e[34m└>\e[35m$\e[1;32m "
echo
# 2  
echo -e "\e[31m[\e[32m02\e[31m]\e[m"
echo -e "\e[34m
┌>[\e[35m~\e[34m]-[\e[35m $tern \e[34m]\e[m
\e[34m└>\e[35m$\e[1;32m "
echo
# 3
echo -e "\e[31m[\e[32m03\e[31m]\e[m"
echo -e "\e[34m
┌>[\e[35m~\e[34m]\e[m
\e[34m└>[\e[35m $tern \e[34m]\e[35m$\e[1;32m "
echo
# 4 
echo -e "\e[31m[\e[32m04\e[31m]\e[m"
echo -e "\e[34m
┌>[\e[35m $tern \e[34m]\e[m
\e[34m└>[\e[35m~\e[34m]\e[35m\$\e[1;32m "
echo
echo

read -p $'\e[34m[\e[31m*\e[34m]\e[32m Enter your choice : ' userps1
 
echo "if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
        command_not_found_handle() {
                /data/data/com.termux/files/usr/libexec/termux/command-not-found \"\$1\"
        }
fi
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth" >> .bash1

if [[ $userps1 == 1 || $userps1 == 01 ]]; 
then
echo "PS1='\e[34m
┌─>[\e[35m $tern \e[34m]-[\e[35m \w \e[34m]\e[m
\e[34m└─>\e[35m \$ \e[1;32m  ' "  >> .bash1
  
sleep 2
break
elif  [[ $userps1 == 2 || $userps1 == 02 ]]; 
then
echo "PS1='\e[34m
┌>[\e[35m \w \e[34m]-[\e[35m $tern \e[34m]\e[m
\e[34m└>\e[35m \$ \e[1;32m  ' "  >> .bash1

sleep 2
break
elif  [[ $userps1 == 3 || $userps1 == 03 ]]; 
then
echo "PS1='\e[34m
┌>[\e[35m \w \e[34m]\e[m
\e[34m└>[\e[35m $tern \e[34m]\e[35m \$ \e[1;32m ' "  >> .bash1

sleep 2
break
elif  [[ $userps1 == 4 || $userps1 == 04 ]]; 
then
echo "PS1='\e[34m
┌>[\e[35m $tern \e[34m]\e[m
\e[34m└>[\e[35m \w \e[34m]\e[35m \$ \e[1;32m ' "  >> .bash1

sleep 2
break
reak
else
echo
echo -e  "\e[33m[\e[31m!\e[33m] \e[31mInvalid option try again \e[m"
sleep 2
fi
done

# Add new bas.bashrc
cd ~
if [ -f ".bashrc" ]
then
rm .bashrc
fi
cd $PREFIX/etc
if [ -f "bash.bashrc" ]
then
rm bash.bashrc
fi
touch bash.bashrc


cd ~
cat ".bash1" > $PREFIX/etc/bash.bashrc
cd ~
$BASH
