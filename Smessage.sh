start () {
		
	clear
apt update
apt upgrade
apt install figlet
apt install toilet
apt install termux-api
cp -f Smessage $PREFIX/bin
chmod 777 $PREFIX/bin/Smessage
clear
echo -e "\033[92mInstall termux-api app from play store"
echo
echo -e "\033[93m Now you can start this command :- Smessage"
cd ~/Messanger
rm -f Smessage.sh
mv .m.sh Smessage.sh
echo
echo "Press enter for start"
read
Smessage
}
	
	echo
	echo
	echo -e -n "	\033[92mDo you want to setup\033[91m (\033[92mY/N\033[91m) "
	read s
	case $s in
	Y|y)start ;;
	N|n)Smessage ;;
	esac
	
	
whatsapp () {
	
	echo -e -n "\033[96m Enter Country code\033[91m ( Without + ) "
read a
if [ ! -z $a ];then
echo -e "\033[96m Your Country Code +$a"
echo
echo -e -n "\033[92m Type Whatsapp number "
fi
read b
if [ ! -z $b ];then
sleep 2
echo -e "\033[92m Whatsapp number +$a$b"
echo
echo -e -n "\033[93m Type Message\033[91m ( Without space ) \033[97m"
fi
read c
if [ ! -z $c ];then
sleep 4
echo
echo -e "\033[92m Your Whatsapp Number $a$b"
echo -e "\033[93m And your message :- $c"
echo
sleep 2
echo -e "\033[91m If correct !!"
sleep 2
echo -e "\033[92m Press Enter"
read
termux-open https://wa.me/$a$b?text=$c
fi
}
telegram () {
	echo -e -n "\033[96m Enter telegram username :- "
read t
if [ ! -z $t ];then
sleep 2
echo -e "\033[92m Typed username :- $t"
echo
sleep 3
echo -e " [+] if correct"
sleep 1
echo " Press enter"
read
termux-open https://t.me/$t
fi
}
info () {
	clear
echo
echo "	======================================="|toilet -F gay -f term
echo
printf "\n\033[92m              ==> This tool created by Maruf <<==\n"
echo
echo "	======================================="|toilet -F gay -f term
echo
printf "\033[96m"
echo " First install Termux-api app from play store"
echo
echo " Install termux api package"
echo
echo "and you want space message type %20"
echo
echo " one example :-"
echo "Type country code ( without + ) 91"
echo
echo "Enter Whatsapp number 9191919191"
echo
echo "Type message ( without space ) :- Hello%20hi%kya%hua"
echo
echo " See this carefully if not understant"
echo
echo "Press enter for home"
read
Smessage
}

update () {
cd $HOME
apt update
apt upgrade
apt install git
rm -rf Messanger
git clone https://github.com/rooted-cyber/Messanger
cd Messanger
bash setup.sh
}


smessage () {
clear
echo
echo "	======================================="|toilet -F gay -f term
echo
printf "\033[92m              ==> Messanger<<==\n"
echo
echo "	======================================="|toilet -F gay -f term
echo
printf "\033[93m	This tool created by Maruf"
echo
printf "\n	\033[96m [ 1 ]\033[92m Send Message in whatsapp\n"
printf "	\033[96m [ 2 ]\033[92m Send message in telegram\n"
printf "	\033[96m [ 3 ]\033[92m info\n"
printf "	\033[96m [ 4 ]\033[92m Update tool\n"
printf "	\033[96m [ 5 ]\033[92m Exit\n"
echo
echo -e -n "\033[91m Select >> "
read b
case $b in
01|1)whatsapp ;;
02|2)telegram ;;
03|3)info ;;
04|4)update ;;
05|5)exit 0 ;;
esac
}