# Download VMware Horizon Client Installer
wget -c https://download3.vmware.com/software/view/viewclients/CART17Q1/VMware-Horizon-Client-4.4.0-5167967.x64.bundle
or
wget -c https://download3.vmware.com/software/view/viewclients/CART17Q2/VMware-Horizon-Client-4.5.0-5650368.x64.bundle

# Install libncurses5 and gtk libs

sudo zypper in libncurses5 libgtkmm-2_4-1 libgtkmm-3_0-1

# Make symbolic links

cd /usr/lib64
sudo ln -s libudev.so.1.6.6 libudev.so.0
sudo ln -s libffi.so.7.1.0 libffi.so.5
sudo ln -s libgstapp-1.0.so.0.1202.0 libgstapp-0.10.so.0
sudo ln -s libgstbase-1.0.so.0.1202.0 libgstbase-0.10.so.0
sudo ln -s libgstreamer-1.0.so.0.1202.0 libgstreamer-0.10.so.0

# Run installer

kdesu bash VMware-Horizon-Client-4.4.0-5167967.x64.bundle

or

kdesu bash VMware-Horizon-Client-4.5.0-5650368.x64.bundle

References:

https://pubs.vmware.com/Release_Notes/en/horizon-client/45/horizon-client-linux-45-release-notes.html

https://www.vmware.com/pdf/horizon-view/horizon-client-linux-45-document.pdf
