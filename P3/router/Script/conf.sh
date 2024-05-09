HOST_NBR=$(hostname | rev | cut -d"-" -f1)


echo "host found = ${HOST_NBR}" > test_host

if [ "${HOST_NBR}" = "1" ]; then
	echo "launching conf_spine" > final_proof
	exec bash /root/Script/conf_spine.sh
else
	echo "launching conf_leaf" > final_proof
	exec bash /root/Script/conf_leaf.sh
fi
