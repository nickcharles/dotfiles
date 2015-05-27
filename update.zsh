#!/bin/zsh

function help() {
  echo "This script enables simple management of various system configuration files."
}

function copy() {
  case "$1" in
    pull)
      cp ~/.$2 $2
    ;;
    push)
      cp $2 ~/.$2
    ;;
    *)
      help
    ;;
  esac
}

function sublCopy() {
  case "$1" in
    pull)
      print "Coming soon"
    ;;
    push)
      print "Coming soon"
    ;;
    *)
      help
    ;;
  esac
}

case "$1" in
  bash)
    copy $2 bashrc
  ;;
  zsh)
    copy $2 zshrc
  ;;
  vim)
    copy $2 vimrc
  ;;
  sublime)
    print "Coming soon" 
  ;;
  *)
    help
  ;;
esac
