#!/usr/bin/bash


		# check if variables are set
		if [ "$plget" = '' ]; then echo 'plget variable are not set !'; exit; fi
		if [ "$plistutil" = '' ]; then echo 'plistutil variable are not set !'; exit; fi
		if [ "$1" = '' ]; then echo 'Usage: FairPlayKey_Parser.sh activation_record.plist'; exit; fi

		echo "Processing '$1'"
		check=$($plistutil -f xml -i "$1" -o - | grep -o 'FairPlayKeyData')
	if [ "$check" = 'FairPlayKeyData' ]; then
		$plistutil -f xml -i "$1" -o - | $plget - 'FairPlayKeyData' | base64 -i -d - | sed 's/-----BEGIN CONTAINER-----//' | sed 's/-----END CONTAINER-----//' | base64 -i -d ->'IC-Info.sisv'
		echo "Wrote 'IC-Info.sisv'"
		echo 'Done!'
	else
		echo "Error 'FairPlayKeyData' value are missing!"
	fi