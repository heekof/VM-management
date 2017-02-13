#!/usr/bin/env python


"""Scipting and automating all my work in openstack"""
"""pip install python-openstackclient"""



from novaclient import client
import json
from pprint import pprint
import argparse
import sys, os
from password import *

DOMAIN = "jaafar.com"
NETWORK_NAME = "clearwater-ansible-private"
GROUPS = ["bono", "homestead", "homer", "sprout", "ellis", "ralf", "sipp-stress", "ns", "zabbix"]
NS_GROUP = "ns"

"""
unset OS_SERVICE_TOKEN
export OS_USERNAME=jaafar
export OS_PASSWORD=password
export OS_AUTH_URL=http://157.159.232.52:5000/v2.0
export PS1='[\u@\h \W(keystone_jaafar)]\$ '

export OS_TENANT_NAME=jaafar
"""



if __name__ == "__main__":
    print "Hello"

    print os.getcwd()
    #os.chdir()
    nova = client.Client(VERSION, OS_USERNAME, OS_PASSWORD, OS_PROJECT_NAME, OS_AUTH_URL, connection_pool=True)



    servers = nova.servers.list()

    client.


    for server in servers:
        print server