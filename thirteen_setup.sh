
echo 'Adding debian sid repo'
add-apt-repository 'deb http://ftp.hr.debian.org/debian sid main contrib non-free'
add-apt-repository ppa:atareao/telegram

echo 'Add Erlang/Elixir repos'
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
rm -f erlang-solutions_1.0_all.deb

echo 'Getting rid of apps I dont use'
apt -y remove firefox-esr

echo 'Running update'
apt -y update

echo 'Running upgrade'
apt -y upgrade

echo 'Installing deps for light'
apt -y install help2man

echo 'Installing light for backlight controls'
git clone git@github.com:haikarainen/light.git /tmp/light
cd /tmp/light && make install

echo 'Installing window manager stuff'
apt -y install i3 ranger rofi scrot

echo '===================================='
echo 'Installing power and monitoring apps'
echo '===================================='
apt -y install tlp powertop thinkfan

echo 'Installing dev stuff'
apt -y install vim git

echo 'Installing Elixir/Erlang'
apt -y install esl-erlang elixir

echo 'Installing messaging stuff'
apt -y install telegram
