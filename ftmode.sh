sudo echo "migrate_set_capability cuju-ft on" | sudo nc -U /home/ubuntu/vm1.monitor
sudo echo "migrate -c tcp:192.168.103.2:4441" | sudo nc -U /home/ubuntu/vm1.monitor

