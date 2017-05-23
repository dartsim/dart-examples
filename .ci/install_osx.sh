brew tap dartsim/dart
brew tap homebrew/science

brew update > /dev/null

brew install dartsim6 --HEAD | grep -v '%$'
