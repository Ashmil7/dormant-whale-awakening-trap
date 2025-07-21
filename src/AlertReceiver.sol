// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AlertReceiver {
    event AlertReceived(string message);
    event DiscordNameLogged(string discord);

    function handleAlert(string calldata message) external {
        emit AlertReceived(message);
    }

    // 👇 This is the function your Trap is expecting
    function respondWithDiscordName(string memory name) external {
        emit DiscordNameLogged(name);
    }
}
