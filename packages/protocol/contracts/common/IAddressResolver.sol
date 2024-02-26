// SPDX-License-Identifier: MIT
//  _____     _ _         _         _
// |_   _|_ _(_) |_____  | |   __ _| |__ ___
//   | |/ _` | | / / _ \ | |__/ _` | '_ (_-<
//   |_|\__,_|_|_\_\___/ |____\__,_|_.__/__/
//
//   Email: security@taiko.xyz
//   Website: https://taiko.xyz
//   GitHub: https://github.com/taikoxyz
//   Discord: https://discord.gg/taikoxyz
//   Twitter: https://twitter.com/taikoxyz
//   Blog: https://mirror.xyz/labs.taiko.eth
//   Youtube: https://www.youtube.com/@taikoxyz

pragma solidity 0.8.24;

/// @title IAddressResolver
/// @notice This contract acts as a bridge for name-to-address resolution.
/// It delegates the resolution to the AddressManager. By separating the logic,
/// we can maintain flexibility in address management without affecting the
/// resolving process.
///
/// Note that the address manager should be changed using upgradability, there
/// is no setAddressManager() function go guarantee atomicness across all
/// contracts that are resolvers.
interface IAddressResolver {
    /// @notice Resolves a name to its address deployed on this chain.
    /// @param name Name whose address is to be resolved.
    /// @param allowZeroAddress If set to true, does not throw if the resolved
    /// address is `address(0)`.
    /// @return addr Address associated with the given name.
    function resolve(
        bytes32 name,
        bool allowZeroAddress
    )
        external
        view
        returns (address payable addr);

    /// @notice Resolves a name to its address deployed on a specified chain.
    /// @param chainId The chainId of interest.
    /// @param name Name whose address is to be resolved.
    /// @param allowZeroAddress If set to true, does not throw if the resolved
    /// address is `address(0)`.
    /// @return addr Address associated with the given name on the specified
    /// chain.
    function resolve(
        uint64 chainId,
        bytes32 name,
        bool allowZeroAddress
    )
        external
        view
        returns (address payable addr);
}
