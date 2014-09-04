#!/bin/bash
_file="$1"
[ $# -eq 0 ] && { echo "Usage: $0 filename"; exit 1; }
[ ! -f "$_file" ] && { echo "Error: $0 file not found."; exit 2; }
 
if [ -s "$_file" ]
then
	echo "$_file has some data."
    echo "Magento - CRM siirto epäonnistui!\n \n\n-Teemu" | EMAIL="teemu.selkala@andersinno.fi" mutt -s "Magento - CRM siirto feilas!" -c "teemu.selkala@andersinno.fi"
else
	echo "$_file is empty."
        # do something as file is empty 
fi