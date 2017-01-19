# concourse-env-docker

Writes the following environment variables to file then starts concourse. Useful if you want to store your SSH keys in the environment instead of a data volume.

|Env Variable Name|Destination|
|---|---|
$FILE_CONCOURSE_TSA_HOST_KEY|$CONCOURSE_TSA_HOST_KEY
$FILE_CONCOURSE_TSA_AUTHORIZED_KEYS|$CONCOURSE_TSA_AUTHORIZED_KEYS
$FILE_CONCOURSE_SESSION_SIGNING_KEY|$CONCOURSE_SESSION_SIGNING_KEY
$FILE_CONCOURSE_TSA_PUBLIC_KEY|$CONCOURSE_TSA_PUBLIC_KEY
$FILE_CONCOURSE_TSA_WORKER_PRIVATE_KEY|$CONCOURSE_TSA_WORKER_PRIVATE_KEY

See [docker-compose.yml](docker-compose.yml) for examples.
