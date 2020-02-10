#!/bin/sh -l

if [ "$ACTION" = 'push' ]
then
echo "running following command"
echo "git ftp push"
git ftp push \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
fi

if [ "$ACTION" = 'catchup' ]
then
echo "running following command"
echo "git ftp catup"
git ftp catchup \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL
fi