#!/bin/sh
# git clone https://github.com/rito15/Nginx-custom-commands.git $HOME/.rito

cd "$(dirname "$0")" || exit
_COMMANDS_DIR_=$(pwd) # 파일의 현재 경로
_REGBASHRC_=${_COMMANDS_DIR_}/.nginx-custom-commands/.register-bashrc

sudo chown $USER ${_COMMANDS_DIR_}
sudo chmod +x ${_COMMANDS_DIR_} -R

${_REGBASHRC_} 'export PATH="$PATH:$HOME/.rito-nginx/.nginx-custom-commands/"'
${_REGBASHRC_} "alias nx-av='cd /etc/nginx/sites-available/'"
${_REGBASHRC_} "alias nx-en='cd /etc/nginx/sites-enabled/'"
${_REGBASHRC_} "alias nx-cd-av='cd /etc/nginx/sites-available/'"
${_REGBASHRC_} "alias nx-cd-en='cd /etc/nginx/sites-enabled/'"

source ~/.bashrc

