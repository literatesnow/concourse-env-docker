#!/bin/sh

create_file() {
  FILE_NAME=$1
  CONTENT=$2

  if [ ! -e "$FILE_NAME" ]; then
    echo "$CONTENT" > "$FILE_NAME"
  fi
}

# Web keys
create_file "$CONCOURSE_TSA_HOST_KEY"        "$FILE_CONCOURSE_TSA_HOST_KEY"
create_file "$CONCOURSE_TSA_AUTHORIZED_KEYS" "$FILE_CONCOURSE_TSA_AUTHORIZED_KEYS"
create_file "$CONCOURSE_SESSION_SIGNING_KEY" "$FILE_CONCOURSE_SESSION_SIGNING_KEY"

# Worker keys
create_file "$CONCOURSE_TSA_PUBLIC_KEY"         "$FILE_CONCOURSE_TSA_PUBLIC_KEY"
create_file "$CONCOURSE_TSA_WORKER_PRIVATE_KEY" "$FILE_CONCOURSE_TSA_WORKER_PRIVATE_KEY"

/usr/local/bin/concourse "$@"
