#!/bin/bash


#Email details
receiver="h.anand@google.com"
subject="Housekeeping script result"
body_file="$output_file"
#send email

echo -e "$body_file" |mail -s "$subject" "$receiver" << EOF
$(cat "$body_file")
EOF
