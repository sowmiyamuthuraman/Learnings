# Install Apache
yum install --quite -y httpd httpd-devel

# Copy configuration file
cp httpd.config /etc/httpd/conf/httpd.conf
cp httpd-vhosts /etc/httpd/conf/httpd-vhosts.conf

# Start Apache and configure it to run at boot
service httpd start
chkconfig httpd on