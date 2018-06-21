echo '==================='
echo 'Adding repositories'
echo '==================='
echo ''
add-apt-repository 'deb http://ftp.hr.debian.org/debian sid main contrib non-free'


add-apt-repository 'deb http://repo.steampowered.com/steam precise steam'
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7

add-apt-repository 'deb http://mega.nz/linux/MEGAsync/Debian_9.0/ ./'
apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4B4E7A9523ACD201

add-apt-repository 'http://repository.spotify.com stable non-free'

echo ''
echo '======================='
echo 'Add Erlang/Elixir repos'
echo '======================='
echo ''
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
rm -f erlang-solutions_1.0_all.deb

apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 4B4E

echo ''
echo '=============================='
echo 'Getting rid of apps I dont use'
echo '=============================='
echo ''
apt -y remove firefox-esr

echo ''
echo '=============='
echo 'Running update'
echo '=============='
echo ''
apt -y update

echo ''
echo '==============='
echo 'Running upgrade'
echo '==============='
echo ''
apt -y upgrade

echo ''
echo '========================='
echo 'Installing deps for light'
echo '========================='
echo ''
apt -y install help2man

echo ''
echo '======================================='
echo 'Installing light for backlight controls'
echo '======================================='
echo ''
git clone git@github.com:haikarainen/light.git /tmp/light
cd /tmp/light && make install

echo ''
echo '==============================='
echo 'Installing window manager stuff'
echo '==============================='
echo ''
apt -y install i3 ranger rofi scrot

echo ''
echo '===================================='
echo 'Installing power and monitoring apps'
echo '===================================='
apt -y install tlp powertop thinkfan xinput

echo ''
echo '===================='
echo 'Installing dev stuff'
echo '===================='
echo ''
apt -y install vim git

echo ''
echo '========================'
echo 'Installing Elixir/Erlang'
echo '========================'
echo ''
apt -y install esl-erlang elixir

echo ''
echo '=========================='
echo 'Installing messaging stuff'
echo '=========================='
echo ''
apt -y install telegram
wget -O /tmp/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
dpkg -i /tmp/discord.deb
rm /tmp/discord.deb

echo ''
echo '====================='
echo 'Installing other apps'
echo '====================='
echo ''
apt install libc6-i386
apt install steam-launcher
