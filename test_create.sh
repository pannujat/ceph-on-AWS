#!/bin/bash

# test create
#

# Import functions
source ./scripts/config.sh
source ./scripts/miscellaneous_functions.sh
source ./scripts/AWS_functions.sh 


########################################################
# Main


# no return values for functions
result=0
	
#result=$(yes_no_input "Do you wish to create lab VPC: $VPC_NAME with CIDR block: $VPC_CIDR y/n:");
#if [ $result -eq 1 ];then exit 0; fi
		
get_vpcid

get_igw

create_vpc 

create_igw


if [ "$IGW_EXISTS" = false ]; then attach_igw; fi

get_main_route_table 

#create_user

#create_login_profile

#attach_read_policy

delete_key_pair

create_key_pair

create_key_pair

echo "ENDE"
