#!/bin/bash
shell=`echo $SHELL`

echo "###############################[K]##################################"
echo "#			Runs only in i3 			   #"
echo "####################################################################"

echo "are you sure you want to install"
echo "enter y/n ?"
read opt
if [ $opt = "y" ]
then
a=`which feh`
b=`echo $a | grep /user/bin/feh`
if [ -z $b ]
then
echo "because we need to check dependency"
echo "#-------------Please Enter your password if asked------------#"
`sudo cp -R ./installable/wallee /usr/bin`
echo "exec wallee" >> ~/.config/i3/config
mkdir ~/.config/wallee
`sudo cp -R ./installable/wallpapers/* ~/.config/wallee`
echo "wallee has been installed Restart your i3 to see the changes"
if [ $shell = "/bin/bash" ]
then
`echo "killall wallee" >> $HOME/.bash_logout
elif [ $shell = "/bin/zsh" ]
then
`echo "killall wallee" >> $HOME/.zlogout`
else
echo "Please add 'killall wallee' to your logout script of shell"
fi
else
echo "Error : dependency error"
echo "Please install feh-2.xx " 
fi
elif [ $opt = "n" ]
then
exit
fi


####################################################################
