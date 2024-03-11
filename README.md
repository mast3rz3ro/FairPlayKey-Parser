# FairPlayKey-Parser
* Generate IC-Info.sisv from activation_record.plist

* The main reason of creating this repo is to point out how lightweight and stable are the plget utility.

## Requirements:

1. [libplist](https://github.com/libimobiledevice/libplist)
2. [plget](https://github.com/kallewoof/plget)

## How to get started?

* Note: Make sure plget and libplist are installed or point out their paths by setting it into the desired variables.

```
export plget=/usr/bin/plget
export plistutil=/usr/bin/plistutil
./fairplay-parser.sh activation_record.plist
Now you should see a new file called IC-Info.sisv
```

## What do 'IC-Info.sisv' are used for?

* This file is responable of getting iCloud service working. Without this file you may won't able to login into AppleStore nor iCloud.

* For more info please refer to these links:
https://theapplewiki.com/wiki/FairPlay
https://theapplewiki.com/wiki/Copy_Protection_Overview
