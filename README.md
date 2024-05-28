# RHEL-mail-script
#Email details
receiver="h.anand@cgi.com"
subject="Housekeeping script result"
body_file="$output_file"
#send email

echo -e "$body_file" |mail -s "$subject" "$receiver" << EOF
$(cat "$body_file")
EOF
