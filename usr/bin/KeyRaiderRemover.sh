#!/bin/bash

if [ "$(id -u)" != "0" ]; then
echo -en '\E[47;31m'"\033[1m>>> ERROR: This script must be executed with root privileges! Re-run it by typing: su -c KeyRaiderRemover.sh <<<\033[0m"; echo ""
exit 1
fi

cd /Library/MobileSubstrate/DynamicLibraries
declare a=$(ls | grep -i -E "wushidou|gotoip4|BAMU|getHanzi")
rm -f $a
kill 1