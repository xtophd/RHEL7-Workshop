#!/bin/bash

FILENAME="/root/roles/motd/templatesmotd.j2"

echo "# Creating file ${FILENAME}'"

cat > ${FILENAME} << EOF
This is the system {{ ansible_hostname }}.

Today’s date is: {{ ansible_date_time.date }}.

Only use this system with permission.
You can ask {{ system_owner }} for access.
EOF

echo "# Here are the contents of ${FILENAME}"

cat ${FILENAME}
