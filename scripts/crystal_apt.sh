sudo apt-get install apt-transport-https
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 09617FD37CC06B54
sudo sh -c 'echo "deb https://dist.crystal-lang.org/apt crystal main" > /etc/apt/sources.list.d/crystal.list'
sudo apt-get update
sudo apt-get install crystal

