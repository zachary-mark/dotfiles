#!/bin/bash

base_path=$(cd $(dirname $0) && pwd)
cp -av \
  $base_path/.bashrc \
  $base_path/.bash_profile \
  $base_path/.vimrc \
  $base_path/bin \
  $base_path/.alacritty.conf \
  $base_path/.tmux.conf \
  ~
