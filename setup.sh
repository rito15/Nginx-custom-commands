#!/bin/bash

_RETURN_PATH_=$(pwd)

cd "$(dirname "${BASH_SOURCE[0]}")" || exit
export PATH=$(echo $PATH | sed "s|:$HOME/.rito-nginx/.nginx-utility-commands/||g")

_COMMANDS_DIR_=$(pwd) # 파일의 현재 디렉토리 절대 경로
_REGBASHRC_=${_COMMANDS_DIR_}/.nginx-utility-commands/.register-bashrc

sudo chown $USER ${_COMMANDS_DIR_}
sudo chmod +x ${_COMMANDS_DIR_} -R

${_REGBASHRC_} 'export PATH="$PATH:$HOME/.rito-nginx/.nginx-utility-commands/"'
${_REGBASHRC_} "alias nx-av='cd /etc/nginx/sites-available/'"
${_REGBASHRC_} "alias nx-en='cd /etc/nginx/sites-enabled/'"
${_REGBASHRC_} "alias nx-cd-av='cd /etc/nginx/sites-available/'"
${_REGBASHRC_} "alias nx-cd-en='cd /etc/nginx/sites-enabled/'"

source ~/.bashrc

cd ${_RETURN_PATH_}
