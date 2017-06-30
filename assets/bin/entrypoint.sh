#!/bin/sh
/usr/sbin/spamd --create-prefs --max-children 5 --helper-home-dir --pidfile=/var/run/spamd.pid -i 0.0.0.0 -A 0.0.0.0/0 -u nobody
