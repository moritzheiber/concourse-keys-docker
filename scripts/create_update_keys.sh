#!/bin/bash

set -eu

KEY_LOCATION="/concourse-keys"

declare -a CONCOURSE_KEY_FILES
CONCOURSE_KEY_FILES=( tsa_host_key session_signing_key worker_key )

mkdir -p "${KEY_LOCATION}"

for key in "${CONCOURSE_KEY_FILES[@]}" ; do
  if ! [ -f "${KEY_LOCATION}/${key}" ] ; then
    ssh-keygen -t rsa -f "${KEY_LOCATION}/${key}" -N ''
  fi
done

install -m 0644 "${KEY_LOCATION}/worker_key.pub" "${KEY_LOCATION}/authorized_worker_keys"
