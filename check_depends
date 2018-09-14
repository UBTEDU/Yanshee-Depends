#!/usr/bin/env bash
PIP_DEPENDS="./pip_depends"
PIP3_DEPENDS="./pip3_depends"
DEB_DEPENDS="./deb_depends"

function pip_install() {
  #statements
  local file_name=$1
  local depends=`cat ${file_name}`
  for app in $depends; do
    echo "Updating $app"
    sudo pip install $app
  done
}

function pip3_install() {
  #statements
  local file_name=$1
  local depends=`cat ${file_name}`
  for app in $depends; do
    echo "Updating $app"
    sudo pip3 install $app
  done
}

function deb_install() {
  #statements
  local file_name=$1
  local depends=`cat ${file_name}`
  for app in $depends; do
    echo "Updating $app"
    sudo apt -y install $app
  done
}

function main() {
  #statements
  sudo pip install --upgrade pip
  sudo pip3 install --upgrade pip
  sudo apt update
  pip_install $PIP_DEPENDS
  pip3_install $PIP3_DEPENDS
  deb_install $DEB_DEPENDS
}

main
