// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {Lib_RLPWriter} from "../thirdparty/Lib_RLPWriter.sol";

/**
 * @title TestLib_RLPWriter
 */
contract TestLib_RLPWriter {
    function writeBytes(bytes memory _in)
        public
        pure
        returns (bytes memory _out)
    {
        return Lib_RLPWriter.writeBytes(_in);
    }

    function writeList(bytes[] memory _in)
        public
        pure
        returns (bytes memory _out)
    {
        return Lib_RLPWriter.writeList(_in);
    }

    function writeString(string memory _in)
        public
        pure
        returns (bytes memory _out)
    {
        return Lib_RLPWriter.writeString(_in);
    }

    function writeAddress(address _in) public pure returns (bytes memory _out) {
        return Lib_RLPWriter.writeAddress(_in);
    }

    function writeUint(uint256 _in) public pure returns (bytes memory _out) {
        return Lib_RLPWriter.writeUint(_in);
    }

    function writeBool(bool _in) public pure returns (bytes memory _out) {
        return Lib_RLPWriter.writeBool(_in);
    }
}
