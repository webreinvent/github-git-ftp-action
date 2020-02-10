#!/bin/sh -l

git ftp $ACTION \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL