
sudo apt-get install build-essential subversion ruby libruby irb rdoc libyaml-ruby libzlib-ruby libopenssl-ruby libdl-ruby libreadline-ruby libiconv-ruby rubygems sqlite3 libsqlite3-ruby libsqlite3-dev 

svn co http://www.metasploit.com/svn/framework3/trunk metasploit
cd metasploit
svn up 

echo "lauch metaspoit"
./msfconsole &

echo "install karma"
wget http://www.offensive-security.com/downloads/karma.rc

apt-get install dhcp3-server 

cp /etc/dhcp/dhcpd.conf /etc/dhcp/dhcpd.conf.orig
echo"option domain-name-servers 10.0.0.1;

echo "default-lease-time 60;" >>/etc/dhcp/dhcpd.conf
echo "max-lease-time 72;"

echo "ddns-update-style none;"

echo "authoritative;"

echo "log-facility local7;"

echo "subnet 10.0.0.0 netmask 255.255.255.0 {"
echo "  range 10.0.0.100 10.0.0.254;"
echo "  option routers 10.0.0.1;"
echo "  option domain-name-servers 10.0.0.1;"
echo "}" >>/etc/dhcp/dhcpd.conf


gem install activerecord sqlite3-ruby
