#!/usr/bin/env bash
YabaiStopServices() {
  yabai --stop-service
  skhd --stop-service
  brew services stop spacebar
  echo "services stop success"
}

YabaiStopServices

