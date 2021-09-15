#!/bin/bash

docker run -it \
    -p 8890:8890 \
    -v /srv/data/docker/seowy:/srv/data/docker/seowy \
    seowy:jupyter
