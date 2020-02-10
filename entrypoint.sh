#!/bin/sh -l

git ftp $INPUT_ACTION \
  --auto-init \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL