#!/bin/bash
# Get requirements file and any extra args for pip
REQ_FILE=$1
shift
PIP_ARGS=$@

# Loop through requirements file
while read LINE; do
    NONCOMMENT=$(echo -n $LINE | sed -e "s/\s*#.*$//")
    if [ -z "$NONCOMMENT" ]; then continue; fi
    pip install $NONCOMMENT $PIP_ARGS || break
done < $REQ_FILE

exit
