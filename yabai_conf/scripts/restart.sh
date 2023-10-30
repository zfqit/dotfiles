#!/usr/bin/env bash
YabaiRestartServices() {
  # brew services restart skhd
  # brew services restart spacebar
  # brew services restart yabai # old versions
  yabai --start-service
  skhd --start-service
  brew services restart spacebar
  echo "services restart success"
}

YabaiRestartServices
