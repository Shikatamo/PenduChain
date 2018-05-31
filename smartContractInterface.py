from web3 import Web3, HTTPProvider, TestRPCProvider;
import json;
from web3.contract import ConciseContract

w3 = Web3(HTTPProvider("http://localhost:8545"));
w3.personal.unlockAccount("0x652586aab8e5ceed32c19cfd8d746b1405728369", "azerty");

contract_address = Web3.toChecksumAddress("0xd7e7538b12ef31c20fd330285cf25d9c04ba8bda");
data = json.load(open('vote.json'));
contract = w3.eth.contract(contract_address, abi = data, ContractFactoryClass=ConciseContract);

tmp = contract.helloWorld(); #lecture
print(tmp);
#contractsubscribe(hex(public_key), transact={'from' : self.w3.eth.accounts[0], 'gas' : 1000000, 'gasPrice' : 0}); # ecriture
