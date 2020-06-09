#!/bin/bash

set -ex

if [ ! -e "counosx/.counosx/counosx.conf" ]; then
    mkdir -p counosx/.counosx

	echo "Creating counosx.conf"

	# Seed a random password for JSON RPC server
	cat <<EOF > counosx/.counosx/counosx.conf
		printtoconsole=1
		prune=800

		server=1

		addnode=95.216.122.130
		addnode=95.216.250.34
		addnode=95.216.250.35
		addnode=95.216.240.82
		addnode=95.216.122.135
		addnode=95.216.122.138
		addnode=95.216.122.142
		addnode=5.9.227.227
		addnode=5.9.227.228
		addnode=5.9.227.230
		addnode=51.89.161.147

		rpcport=9334
		rpcuser=counosx
		rpcpassword=${RPCPASSWORD:-`dd if=/dev/urandom bs=33 count=1 2>/dev/null | base64`}
EOF
fi

cat counosx/.counosx/counosx.conf

echo "Initialization completed successfully"


if [ $# -gt 0 ]; then
    args=("$@")
else
    args=("-rpcallowip=::/0")
fi

exec counosx/src/counosxd "${args[@]}"
