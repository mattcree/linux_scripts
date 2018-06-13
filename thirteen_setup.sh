
echo 'Adding repos'
add-apt-repository 'deb http://ftp.hr.debian.org/debian sid main contrib non-free'

echo 'Getting rid of apps I dont use'
apt remove firefox-esr

echo 'Running update'
apt update
echo 'Running upgrade'
apt upgrade

echo 'Installing deps for light'
apt install help2man

echo 'Installing light for backlight controls'
git clone git@github.com:haikarainen/light.git /tmp/light
cd /tmp/light && make install

echo 'Installing the basics'
apt install i3 vim ranger git tlp powertop rofi scrott

# Installing Erlang/Elixir
