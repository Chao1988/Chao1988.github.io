#!/bin/sh
diskpoint=$(diskutil list physical |head -n1 | awk -F "/"  '{print $3}' |awk '{print $1}')
diskutil eject $diskpoint
diskutil erasedisk APFS "Macintosh HD" $diskpoint
/Volumes/os/Install\ macOS\ Monterey.app/Contents/Resources/startosinstall --volume /Volumes/Macintosh\ HD/ --agreetolicense
