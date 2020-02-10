#!/bin/sh -l

if [ "$ACTION" = 'push' ]
then
git ftp push \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
fi

if [ "$ACTION" = 'catchup' ]
then
git ftp catchup \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
fi