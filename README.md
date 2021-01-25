Group 1

KidEarn Allowance Project

With this project we wanted to build a dApp for parents and kids to use for chores and allowance. It gives parents an easy way to track chore completion in real time, and gives kids a platform to interact with  blockchain from an earlier age.

# Participants
Kelsey

Stephen

Ann

# Dependencies
* Truffle
* VS Code
* Excel2Json (used in Python)
* A working knowledge of solidity

# How it works

## Creating a list of Chores
To make chores easy to add/remove for adults, we used excel2json, which converts .xlsx files into JSON. You can then save the JSON file in your Migrations folder for use with the truffle box.
** Image here **

## Compiling

To compile your solidity contracts using truffle, simply cd into the directory where you stored the truffle box from your command line. Use command:
> truffle compile

*Image-Compile*

## Migration

Truffle uses a migration system to handle smart contract deployments. The migration contract keeps track of changes. To migrate your contracts use command:
> truffle migrate

*Image-Migrate*

## Testing (optional)

## Deploying

## FrontEnd

# Next Steps