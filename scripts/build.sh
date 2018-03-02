#!/bin/bash

set -uo pipefail

brew install carthage --ignore-already-installed
brew install swiftlint --ignore-already-installed
gem install bundler
bundle install
bundle exec fastlane prepare

echo "Environment setup. Enjoy your life"
