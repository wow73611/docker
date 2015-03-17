# Build docker image

    docker build -t wow73611/bitcoind --no-cache .


# Running bitcoind to Sync blockchain

    docker run -it --name bitcoind -v $(pwd)/bitcoin:/root/.bitcoin wow73611/bitcoind bash

    root@xxx:/# bitcoind

    root@xxx:/# bitcoin-cli getinfo


# Running bitcoind on daemon and support RPC

    docker run -d --name bitcoind -p 8332:8332 -p 8333:8333 -v $(pwd)/bitcoin:/root/.bitcoin wow73611/bitcoind


