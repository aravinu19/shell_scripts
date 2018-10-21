echo "Adding Port Forward for port 80 to port 8080"
sudo iptables -A PREROUTING -t nat -i eth0 -p tcp --dport 80 -j REDIRECT --to-port 8080
echo "Adding port 80 for inbound Exception"
sudo iptables -A INPUT -p tcp -m tcp --sport 80 -j ACCEPT
echo "Adding port 80 to Outbound Exception"
sudo iptables -A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT
