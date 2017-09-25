# installazione golang
yum install golang

# installazione geth
git clone https://github.com/ethereum/go-ethereum.git
cd go-ethereum
make geth
cd build/bin/

# impostazioni datadir
mkdir node0
cp ../../../genesis.json node0
./geth --datadir="node0" --ipcdisable --port 30301 --rpcport 8101
