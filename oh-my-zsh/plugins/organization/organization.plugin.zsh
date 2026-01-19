function h () {
  cd ~/$1;
}

function c () {
  cd ~/projects/$1;
}

function _h () {
  _files -W ~ -/
}

function _c () {
  _files -W ~/projects -/
}

compdef _h h
compdef _c c
