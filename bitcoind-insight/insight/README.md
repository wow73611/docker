# Prerequisties

    - The bitcoind must be running and have finished downloading the blockchain


# Build docker image based on wow73611/bitcoind

    docker build -t wow73611/insight --no-cache .


# Running insight on daemon

    docker run -d -p 8332:8332 -p 8333:8333 -p 3000:3000 \
    -v $(pwd)/bitcoin:/root/.bitcoin -v $(pwd)/insight:/root/.insight wow73611/insight


