#!/bin/sh -l


echo $INPUT_USER
echo $INPUT_PASSWORD
echo $INPUT_URL

git ftp push \
  --auto-init \
  -vv \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL