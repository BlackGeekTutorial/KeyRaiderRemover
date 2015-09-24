#!/bin/bash

if [ "$(id -u)" != "0" ]; then
echo -en '\E[47;31m'"\033[1m>>> ERROR: This script must be executed with root privileges! Re-run it by typing: su -c KeyRaiderRemover.sh <<<\033[0m"; echo ""
exit 1
fi

cd /Library/MobileSubstrate/DynamicLibraries
grep -R -l -i -E "wushidou|gotoip4|BAMU|getHanzi" . | while read f; do rm -f "$f"; echo "REMOVED: $f"; done
