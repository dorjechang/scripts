#! /bin/sh

/usr/bin/find ~/.cache/mozilla/firefox/*/cache*       -exec /bin/rm -f {} ';'
/usr/bin/find ~/.cache/mozilla/firefox/*/OfflineCache -exec /bin/rm -f {} ';'
/bin/rm -rf ~/.mozilla/firefox/*/storage

echo '1' 2> /dev/null >> ~/scripts/stats/${0##*/}
