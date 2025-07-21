// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {ITrap} from "drosera-contracts/interfaces/ITrap.sol";

contract DormantWhaleTrap is ITrap {
    address constant WHALE_ADDRESS = 0x999d9417141FBa7eF7272589C0D26975D2FF4107;
    uint256 public constant AMOUNT_THRESHOLD = 10 ether;
    uint256 public constant DORMANCY_BLOCKS = 100;

    function collect() external view override returns (bytes memory) {
        return abi.encode(block.number);
    }

    function shouldRespond(bytes[] calldata data) external pure override returns (bool, bytes memory) {
        if (data.length == 0) return (false, "");

        // Simulate trigger logic (for now)
        bool dormantWhaleTriggered = true;

        if (dormantWhaleTriggered) {
            return (true, abi.encode("Dormant whale made a big move!"));
        }

        return (false, "");
    }
}
