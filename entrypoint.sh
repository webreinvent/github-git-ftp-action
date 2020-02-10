#!/bin/sh -l

git ftp catchup \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL