# Download VMware Horizon Client Installer
wget -c https://download3.vmware.com/software/view/viewclients/CART18FQ3/VMware-Horizon-Client-4.6.0-6617224.x64.bundle

# Install libncurses5, gtk libs and libpng12
sudo zypper in libncurses5 libgtkmm-2_4-1 libgtkmm-3_0-1 libpng12-0

# Make symbolic links
cd /usr/lib64
sudo ln -s libudev.so.1.6.6 libudev.so.0
sudo ln -s libffi.so.7.1.0 libffi.so.5
sudo ln -s libgstapp-1.0.so.0.1203.0 libgstapp-0.10.so.0
sudo ln -s libgstbase-1.0.so.0.1203.0 libgstbase-0.10.so.0
sudo ln -s libgstreamer-1.0.so.0.1203.0 libgstreamer-0.10.so.0

# Run installer
kdesu bash VMware-Horizon-Client-4.6.0-6617224.x64.bundle

References:

https://docs.vmware.com/en/VMware-Horizon-Client-for-Linux/4.6/rn/horizon-client-linux-46-release-notes.html

https://docs.vmware.com/en/VMware-Horizon-Client-for-Linux/4.6/linux-client-installation.pdf
