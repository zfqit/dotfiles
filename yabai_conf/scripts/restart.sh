#!/usr/bin/env bash
YabaiRestartServices() {
  # brew services restart skhd
  # brew services restart spacebar
  # brew services restart yabai # old versions
  yabai --restart-service
  skhd  --restart-service
  brew services restart spacebar
  echo "services restart success"
}

YabaiRestartServices

