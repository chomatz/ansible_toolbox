#!/bin/env bash

coin="BTC"
wallet="bc1q357kt9zatwmgywk0gq7jdjx37f5qj5e7uqezu4"
worker="slithice"
refcode="bj3y-jvd2"
threads="12"

sysctl -w vm.nr_hugepages="$threads"

for i in $(find /sys/devices/system/node/node* -maxdepth 0 -type d); do
	echo 3 > "$i/hugepages/hugepages-1048576kB/nr_hugepages";
done

if [ "$refcode" != ""  ]; then
	worker+="#${refcode}"
fi

/opt/xmr/xmrig --randomx-1gb-pages -t "$threads" -o rx.unmineable.com:3333 -a rx -k -u "$coin":"$wallet"."$worker" -p x
