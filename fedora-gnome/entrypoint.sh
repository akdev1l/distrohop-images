#!/bin/bash

if "${DISTROHOP_PASSWORD}" = ""; then
    DISTROHOP_PASSWORD="$(head -c16 /dev/urandom | sha256sum)"
    printf "${DISTROHOP_PASSWORD}\n" > /run/host/tmp/distrohop.passwd
fi

useradd -m -G wheel "${DISTROHOP_USER}"
passwd --stdin "${DISTROHOP_USER}" <<EOF
${DISTROHOP_PASSWORD}
EOF

exec /sbin/init
