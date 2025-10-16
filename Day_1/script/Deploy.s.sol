// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Greeting} from "../src/Greeting.sol";

contract DeployScript is Script {
    function run() external returns (Greeting) {
        uint256 deployerPrivateKey = vm.envUint("BASE_PRIVATE_KEY");
        
        vm.startBroadcast(deployerPrivateKey);
        
        Greeting greeting = new Greeting("Hello, Base");
        
        vm.stopBroadcast();
        
        console.log("Greeting deployed to:", address(greeting));
        
        return greeting;
    }
}
