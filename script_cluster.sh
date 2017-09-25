# installazione golang
yum install golang

# installazione geth
git clone https://github.com/ethereum/go-ethereum.git
cd go-ethereum
make geth
cd build/bin/

# creazione datadir
mkdir node0 node1 node2

# copia del file genesis nelle varie datadir
cp ../../../genesis.json node0
cp ../../../genesis.json node1
cp ../../../genesis.json node2

# copia del file static-json nelle datadir dalla seconda in poi
cp ../../../static-nodes.json node1/geth/
cp ../../../static-nodes.json node2/geth/

# avvio dei processi dei vari nodi
./geth --datadir="node0" --ipcdisable --port 30301 --rpcport 8101 &
./geth --datadir="node1" --ipcdisable --port 30302 --rpcport 8102 &
./geth --datadir="node2" --ipcdisable --port 30303 --rpcport 8103 &
