set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** testing docker run - alpine *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW Display current directory: $ANSI_RESET"
docker build . --tag local/alpine:3.10
docker run --rm --name some-alpine local/alpine:3.10 pwd
docker rmi local/alpine:3.10

echo -e "\n $ANSI_GREEN *** TEST COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
