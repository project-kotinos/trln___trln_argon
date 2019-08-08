#!/usr/bin/env bash
set -ex

export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install tzdata -y
gem install bundler -v 2.0.1

bundle install --jobs=3 --retry=3
rake
