// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {MoodNft} from "../src/MoodNft.sol";

contract MoodNftTest is Test {
    MoodNft public moodNft;

    // Happy SVG (Base64)
    string public constant HAPPY_SVG =
        "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPGNpcmNsZSBjeD0iMTAwIiBjeT0iMTAwIiByPSI4MCIgZmlsbD0iI0ZGRDk2NiIvPgogIDxjaXJjbGUgY3g9IjcwIiBjeT0iODUiIHI9IjEwIiBmaWxsPSIjMDAwIi8+CiAgPGNpcmNsZSBjeD0iMTMwIiBjeT0iODUiIHI9IjEwIiBmaWxsPSIjMDAwIi8+CiAgPHBhdGggZD0iTTYwIDEzMCBRMTAwIDE2MCAxNDAgMTMwIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iNSIgZmlsbD0ibm9uZSIvPgogIDxwYXRoIGQ9Ik01MCA3MCBMMzAgNDAiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSI1Ii8+CiAgPHBhdGggZD0iTTE1MCA3MCBMMTcwIDQwIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iNSIvPgo8L3N2Zz4=";

    // Sad SVG (Base64)
    string public constant SAD_SVG =
        "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAwIiBoZWlnaHQ9IjIwMCIgdmlld0JveD0iMCAwIDIwMCAyMDAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgPGNpcmNsZSBjeD0iMTAwIiBjeT0iMTAwIiByPSI4MCIgZmlsbD0iI0E5Q0NFMyIvPgogIDxjaXJjbGUgY3g9IjcwIiBjeT0iODUiIHI9IjEwIiBmaWxsPSIjMDAwIi8+CiAgPGNpcmNsZSBjeD0iMTMwIiBjeT0iODUiIHI9IjEwIiBmaWxsPSIjMDAwIi8+CiAgPHBhdGggZD0iTTYwIDE0MCBRMTAwIDExMCAxNDAgMTQwIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iNSIgZmlsbD0ibm9uZSIvPgogIDxwYXRoIGQ9Ik01MCA3MCBMMzAgNDAiIHN0cm9rZT0iIzAwMCIgc3Ryb2tlLXdpZHRoPSI1Ii8+CiAgPHBhdGggZD0iTTE1MCA3MCBMMTcwIDQwIiBzdHJva2U9IiMwMDAiIHN0cm9rZS13aWR0aD0iNSIvPgo8L3N2Zz4=";

    function setUp() public {
        moodNft = new MoodNft(SAD_SVG, HAPPY_SVG);
    }

    function _contains(
        string memory what,
        string memory where
    ) internal pure returns (bool) {
        return
            bytes(what).length >= bytes(where).length &&
            keccak256(abi.encodePacked(what)) != keccak256("");
    }
}
