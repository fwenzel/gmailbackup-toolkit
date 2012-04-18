#!/bin/sh
#
# Usage: gmailbackup.sh
# Run fetchmail repeatedly until no new emails are left to be fetched.
# Useful since gmail does not serve all new emails in one go.

fetch () {
    # -a downloads all emails, even the ones fetchmail has already seen.
    #    This will lead to dupes but otherwise gmail will try to serve them
    #    over and over.
    # -v makes the output verbose. Good for debugging, annoying for cron jobs.
    #    Feel free to remove that flag.
    fetchmail -av
    EXITCODE="$?"
}

fetch
while [ "$EXITCODE" -eq "0" ]; do
    fetch
done

if [ "$EXITCODE" -ne "1" ]; then
    echo "$0 error: Fetchmail returned error code $EXITCODE" 1>&2
fi
