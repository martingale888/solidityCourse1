// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract Decoder {
    /* This exercise assumes you know how abi decoding works.
        1. In the `decodeData` function below, write the logic that decodes a `bytes` data, based on the function parameters
        2. Return the decoded data
    */
    bytes public encoded;

    // must be uint, not uint256
    function decodeData(bytes memory _data) public pure returns (string memory, uint) {
        (string memory s, uint y) = abi.decode(_data,(string, uint));
        return (s, y);
    }
}

