#!/usr/bin/env bash

source keystonerc_jaafar

#nova list

#nova flavor-list

#flavor = 112c0b63-0d93-4946-a3ac-331cae6317a5

#nova image-list
#image = 205ff12f-25c4-4ffd-abec-4f0a36a996c9

#nova keypair-list
#keypair = Clearwater | 7f:b4:49:4b:27:19:cd:4d:5c:70:1c:fa:cd:cb:b5:6a

#neutron net-list
#network = 60df17d4-7494-45bd-aecf-001199adaffb | testbed   | d2bf0562-0311-48ce-8136-cd3324f75acc 192.166.1.0/24


#nova boot --image 205ff12f-25c4-4ffd-abec-4f0a36a996c9 --flavor 112c0b63-0d93-4946-a3ac-331cae6317a5 --key-name Clearwater --nic net-id=60df17d4-7494-45bd-aecf-001199adaffb,net-name=net-name=testbed --availability-zone 0 --security-groups basic
#if not $1
#echo "you need to specify the VM name"

nova boot --image ubuntu-14.04-x86_64_for_jaafar --flavor m1.small --nic net-id=60df17d4-7494-45bd-aecf-001199adaffb --key-name clearwater --security-groups Basic myVM
