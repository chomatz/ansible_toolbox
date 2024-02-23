#!/bin/env bash

coin="BNB"
wallet="0xeff3eb531e313f4569dfd038c9451a0154c328fa"
worker="jack_sparrow"
refcode="9ea5-dt0y"
threads="12"

sysctl -w vm.nr_hugepages="$threads"

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d); do
	echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

if [ "$refcode" != ""  ]; then
	worker+="#${refcode}"
fi

/opt/xmr/xmrig --randomx-1gb-pages -t "$threads" -o rx.unmineable.com:3333 -a rx -k -u "$coin":"$wallet"."$worker" -p x
