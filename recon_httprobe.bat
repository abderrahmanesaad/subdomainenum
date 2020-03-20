curl -s https://crt.sh/?q^=%%.%1^&output^=json | jq -r .[].name_value | sed -e "s/*.//g" | sort /unique >> %1sub.txt
sed -e "s/<BR>/\n/g" %1sub.txt | sort /unique > %1.txt
httprobe.py -l %1.txt > %1alive.txt
