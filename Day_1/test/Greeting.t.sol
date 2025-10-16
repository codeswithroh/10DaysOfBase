// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Greeting} from "../src/Greeting.sol";

contract GreetingTest is Test {
    Greeting public greeting;

    function setUp() public {
        greeting = new Greeting("Hello, Base");
    }

    function testInitialGreeting() public {
        assertEq(greeting.greeting(), "Hello, Base");
    }

    function testGreet() public {
        assertEq(greeting.greet(), "Hello, Base");
    }

    function testSetGreeting() public {
        greeting.setGreeting("GM Rohit Bosa!");
        assertEq(greeting.greeting(), "GM Rohit Bosa!");
        assertEq(greeting.greet(), "GM Rohit Bosa!");
    }

    function testSetGreetingMultipleTimes() public {
        greeting.setGreeting("First");
        assertEq(greeting.greeting(), "First");
        
        greeting.setGreeting("Second");
        assertEq(greeting.greeting(), "Second");
        
        greeting.setGreeting("Third");
        assertEq(greeting.greeting(), "Third");
    }

    function testSetEmptyGreeting() public {
        greeting.setGreeting("");
        assertEq(greeting.greeting(), "");
    }
}
