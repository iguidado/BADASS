for i in docker wireshark; do
 sudo usermod -aG $i $USER
done
