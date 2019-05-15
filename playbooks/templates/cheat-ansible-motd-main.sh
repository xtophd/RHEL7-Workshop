#!/bin/bash

FILENAME="/root/roles/motd/defaults/main.yml"

echo "# Creating file ${FILENAME}'"

cat > ${FILENAME} << EOF
system_owner: root@workstation.example.com
EOF

echo "# Here are the contents of ${FILENAME}"

cat ${FILENAME}
