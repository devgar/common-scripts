#!/bin/bash

from="Edgar <samples@edgarai.com>"
to="berto.berto@mailinator.com"
subject="Test of service"
message="I hae a new idea..."

while [[ $# > 1 ]]
do
key="$1"

case $key in
    -t|--to)
    to="$2"
    shift
    ;;
    -f|--from)
    from="$2"
    shift
    ;;
    -s|--subject)
    subject="$2"
    shift
    ;;
    *)
    # unknown option
    message="$1"
    ;;
esac
shift # past argument or value
done

KEY="key-b0422f519c1d751f66100950bd2882d1"

curl -s --user "api:$KEY" \
https://api.mailgun.net/v3/edgarai.com/messages \
 -F from="$from" \
 -F to="$to" \
 -F subject="$subject" \
 -F text="$message"
