#!/usr/bin/env bash

YabaiStopServices() {
  brew services stop sketchybar
  yabai --stop-service
  skhd --stop-service
  echo "services stop success"
}

YabaiStopServices
