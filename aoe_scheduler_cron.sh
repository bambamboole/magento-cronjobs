#!/bin/bash

HOME="/home/www/pXXXXXX"
BASE="$HOME/html/production/web"

cd $BASE || exit 1

unset REQUEST_METHOD

! test -e maintenance.flag && /bin/bash scheduler_cron.sh --mode always
! test -e maintenance.flag && /bin/bash scheduler_cron.sh --mode default
