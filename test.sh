#! /bin/bash
set -x
echo "good morning" 

GETOPT=$(getopt -o p:u: -l password:,username:, -- "$@")
eval set -- "$GETOPT"

set -o allexport
set +o allexport

while true; do
    case "$1" in
    -u | --username)
        username="$2"
        shift 2
        ;;
    -p | --password)
        password="$2"
        shift 2
        ;;
    --zeeve-user)
        z_username="$2"
        shift 2
        ;;
    --zeeve-pass)
        z_password="$2"
        shift 2
        ;;
    --binary-user)
        binary_username="$2"
        shift 2
        ;;
    --binary-pass)
        binary_password="$2"
        shift 2
        ;;
    --)
        shift
        break
        ;;
    *)
        echo "Unexpected option $1"
        exit 1
        ;;
    esac
done


echo "Good morning $username my password is $password "
