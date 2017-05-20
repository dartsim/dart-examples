if [ "$TRAVIS_OS_NAME" = "linux" ]; then '.ci/script_linux.sh' ; fi
if [ "$TRAVIS_OS_NAME" = "osx"   ]; then '.ci/script_osx.sh'   ; fi

