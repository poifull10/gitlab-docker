#!/bin/bash

cat <<EOF > dns/hosts
127.0.0.1   localhost localhost.localdomain localhost4 localhost4.localdomain4
$IP_ADDR dns-server.dev.com $(hostname)
$IP_ADDR gitlab.dev.com gitlab
EOF
