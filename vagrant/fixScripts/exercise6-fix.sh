#!/bin/bash
FINAL=${@: -1} # keep the final positional parameter as destination path
BYTES=0

# set destination as the other server
if [ "$(hostname)" = "server1" ]; then
    DEST="server2"
else
    DEST="server1"
fi

# run on all parameters except the last one
while [ $# -gt 1 ]; do
    # add the bytes of the current file to the total count
    let BYTES=BYTES+$(wc -c $1 | awk '{print $1}')
    # copy the file over to the destination path on the destination server
    scp $1 vagrant@${DEST}:${FINAL}
    # shift the current parameter off
    shift
done

# print the total bytes copied
echo ${BYTES}