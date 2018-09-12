#!/usr/bin/env bash
PIP_DEPENDS="./pip_depends"
DEB_DEPENDS="./deb_depends"

function pip_install() {
  #statements
  local file_name=$1
  depends=`cat ${file_name}`
  for app in depends; do
    sudo pip install $app
  done
}

function deb_install() {
  #statements
  local file_name=$1
  depends=`cat ${file_name}`
  for app in depends; do
    sudo apt install $app
  done
}

function main() {
  #statements
  pip_install $PIP_DEPENDS
  deb_install $DEB_DEPENDS
}

main
