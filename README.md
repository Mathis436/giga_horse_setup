# giga_horse_setup
GPU plotter setup script for ubuntu server

echo "sudo apt install -y unzip" >> start.sh

echo "wget https://github.com/Mathis436/giga_horse_setup/archive/refs/heads/main.zip" >> start.sh

echo "unzip main.zip" >> start.sh

echo "cp ./giga_horse_setup-main/* ~" >> start.sh

echo "chmod 777 *" >> start.sh

echo "rm main.zip" >> start.sh

echo "./setup.sh" >> start.sh
