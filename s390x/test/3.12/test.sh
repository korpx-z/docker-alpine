set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** testing docker run - alpine *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Display current bash version: $ANSI_RESET"
docker build . --tag test/quay.io/ibmz/alpine:3.12
docker run --rm --name some-alpine test/quay.io/ibmz/alpine3:12 --version
docker rmi test/quay.io/ibmz/alpine3:12

echo -e "\n $ANSI_GREEN *** TEST COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
