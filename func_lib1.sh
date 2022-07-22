function userinfo()
{
	echo "Current user:" $USER
	echo "User home directory path:" $HOME
}

function ipinfo(){
	IP_VAR=`ifconfig eth0 | grep "inet " | tr -s " " ":" | \
	cut -f3 -d ":"`

	DGW_VAR=`ip route show | grep "default" | tr -s " " ":" | \
	cut -f3 -d ":"`

	echo "IP ADDRESS:" $IP_VAR
	echo "DEFAULT GATEWAY:" $DGW_VAR
	cat /etc/resolv.conf | grep "nameserver" | grep -v "#"
}

userinfo
ipinfo


