#!/bin/bash
# shellcheck disable=SC2086

rsync -av --delete \
  --exclude={'.idea','*.iml'} \
  build/libs/lib build/libs/halo-1.5.4.jar \
  start.sh \
  ${HOST}:~/halo

rsync -av --delete  config/halo.ini ${HOST}:~/etc/supervisor/conf.d

ssh ${HOST} "sh ~/bin/supervisorctl.sh update"
ssh ${HOST} "sh ~/bin/supervisorctl.sh restart halo"
