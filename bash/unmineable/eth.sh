#!/bin/env bash

coin="ETH"
wallet="0x8e2bF71b15a0D6460a0a4fDBBB1357eFDCf01d6D"
worker="meepo"
refcode="crb2-ews5"
threads="12"

sysctl -w vm.nr_hugepages="$threads"

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d); do
	echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

if [ "$refcode" != ""  ]; then
	worker+="#${refcode}"
fi

/opt/xmr/xmrig --randomx-1gb-pages -t "$threads" -o rx.unmineable.com:3333 -a rx -k -u "$coin":"$wallet"."$worker" -p x
