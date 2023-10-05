sudo apt update -y && sudo apt upgrade -y
sudo apt install nvidia-driver-535 unzip nvtop screen vim htop sysstat qemu-guest-agent nfs-common git python3-aionotify libgomp1 ocl-icd-libopencl1 rsync nano -y
wget https://github.com/madMAx43v3r/chia-gigahorse/archive/refs/heads/master.zip
unzip master.zip
mv chia-gigahorse-master chia-gigahorse
echo "#!/usr/bin/env bash" >> cuplot.sh
echo "cd /home/william/chia-gigahorse/cuda-plotter/linux/x86_64" >> cuplot.sh
echo "./cuda_plot_k32 -n -1 -C 8 -t /mnt/temp/ -2 /mnt/local/ -f b437465a764326e215d9c92e4394f219a920f28a651d916d65b0af1ac5710ad894a5a9f9552d89006eee68fda043a211 -c xch12c7n4z6jaxhtqt4j4l694mdzadm363nu0u6e58p6fy8mz4p0z9lst6rqem" >> cuplot.sh
chmod 777 cuplot.sh
sudo mkdir /mnt/cache1
sudo mkdir /mnt/cache2
sudo mkdir /mnt/cache3
sudo mkdir /mnt/cache4
sudo mkdir /mnt/cache5
echo "sudo mount -t nfs 192.168.137.56:/mnt/cache1 /mnt/cache1" >> mount.sh
echo "sudo mount -t nfs 192.168.137.59:/mnt/cache2 /mnt/cache2" >> mount.sh
echo "sudo mount -t nfs 192.168.137.59:/mnt/cache3 /mnt/cache3" >> mount.sh
echo "sudo mount -t nfs 192.168.137.62:/mnt/cache4 /mnt/cache4" >> mount.sh
echo "sudo mount -t nfs 192.168.137.62:/mnt/cache5 /mnt/cache5" >> mount.sh
chmod 777 mount.sh
wget https://github.com/lmacken/plow/archive/refs/heads/main.zip
unzip main.zip
cp ./plow-main/plow.py ~
sudo chmod 777 plow.py
rm -r plow-main
rm main.zip
rm master.zip
echo "# chia aliases" >> .bashrc
echo "alias plow='~/plow.py'" >> .bashrc
echo "alias plot='~/cuplot.sh'" >> .bashrc
echo "alias mount='~/mount.sh'" >> .bashrc
source .bashrc
sudo chmod 777 replace.py
python3 ./replace.py plow.py
sudo chmod 777 ./plow.py
sudo reboot now
