# just for debug
set -ex
docker build Containers/borgbackup -t aio-borgbackup:latest  # no need to restart master after this, just click Create backup again
docker build Containers/mastercontainer -t all-in-one:latest  --build-context repo=.
# lazydocker to wipe all containers and volumes if needed
