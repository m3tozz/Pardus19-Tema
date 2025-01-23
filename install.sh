########################################
# Made By M3TOZZ                       #
# https://m3tozz.github.io             #
########################################
if [[ "${UID}" != 0 ]] ; then
	echo -e "Lütfen scripti yönetici ayrıcalıkları ile çalıştırın:\n\tsudo bash ./install.sh"
	exit 1
fi
echo -e "\033[0;31m 
Kurulum Yapılıyor...\033[1;36m"
sleep 0.2
clear
echo -e "\033[31m
	TR: İkon paketi kuruluyor...\033[0m"
if ! command -v wget
then
    	clear
    	echo -e "\033[1;31m
wget Bulunamadı!\033[1;33m
wget paketi sisteminizde kurulu olmadığı için Papyrus ikonları sisteminize kurulamadı

\033[1;31mwget Kurulumu:
\033[1;36m
Debian / Ubuntu;
→ sudo apt install wget
\033[1;32m
Arch);
→ sudo pacman -S wget
\033[1;35m
RHEL-based dağıtımlar;
→ sudo dnf install neofetch"
exit 1

fi

wget -qO- https://git.io/papirus-icon-theme-install | sh

    echo -e"
	\033[0;31mTema dosyası /usr/share/themes içerisine kopyalanıyor...\033[1;36m"
	cp -r themes/Pardus19-Adapta-Blue-Eta/ /usr/share/themes 

    echo -e"
	\033[0;31mArka plan dosyaları /usr/share/backgrounds içerisine kopyalanıyor...\033[1;36m"                                      
	mkdir /usr/share/backgrounds/Pardus19
	cp -r wallpapers /usr/share/backgrounds/Pardus19
clear
echo -e "\033[0;31m 
Dosyalar sisteminize eklendi!\033[0m"