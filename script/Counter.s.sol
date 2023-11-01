// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";
import {Upgrades} from "openzeppelin-foundry-upgrades/Upgrades.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        address proxy = deploy();
        upgrade(proxy);
        vm.stopBroadcast();
    }

    function deploy() public returns (address proxy) {
        proxy = Upgrades.deployTransparentProxy(
            "Counter.sol:Counter",
            msg.sender,
            abi.encodeCall(Counter.initialize, (1))
        );

        Counter counter = Counter(proxy);

        counter.increment();
        counter.decrement();
    }

    function upgrade(address proxy) public {
        Upgrades.upgradeProxy(proxy, "CounterV2.sol:CounterV2", "");
    }
}
