# giga_horse_setup
GPU plotter setup script for ubuntu server

sudo apt install -y unzip
wget https://github.com/Mathis436/giga_horse_setup/archive/refs/heads/main.zip
unzip main.zip
cp ./giga_horse_setup-main/* ~
chmod 777 *
rm main.zip
./setup.sh
