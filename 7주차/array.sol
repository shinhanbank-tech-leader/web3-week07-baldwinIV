// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract StackClub {
    address[] public members;

    constructor() {
        members.push(msg.sender);
    }

    function addMember(address addr) external  {
         require(isMember(msg.sender), "Not a member of StackClub");
        members.push(addr);
    }

    function removeLastMember() external  {
         require(isMember(msg.sender), "Not a member of StackClub");
        members.pop();
    }

  function isMember(address _addr) public view returns (bool) {
        uint256 length = members.length;
        
        for (uint256 i = 0; i < length; i++) {
            if (members[i] == _addr) {
                return true;
            }
        }
        
        return false;
    }

}
//---
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function filterEven(uint256[] calldata numbers) external pure returns (uint256[] memory) {
        uint256 length = numbers.length;
        uint256 count = 0;

        for (uint256 i = 0; i < length; i++) {
            if (numbers[i] % 2 == 0) {
                count++;
            }
        }

        uint256[] memory evens = new uint256[](count);

        uint256 index = 0;

        for (uint256 i = 0; i < length; i++) {
            if (numbers[i] % 2 == 0) {
                evens[index] = numbers[i];
                index++;
            }
        }

        return evens;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    uint256[] public evenNumbers;
    
    function filterEven(uint256[] calldata numbers) external {
        uint256 length = numbers.length;

        for (uint256 i = 0; i < length; i++) {
            if (numbers[i] % 2 == 0) {
                evenNumbers.push(numbers[i]);
            }
        }
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function sum(uint256[] calldata numbers) external pure returns (uint256) {
        uint256 total = 0;
        uint256 length = numbers.length;

        for (uint256 i = 0; i < length; i++) {
            total += numbers[i];
        }

        return total;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    function sum(uint256[5] memory numbers) external pure returns (uint256) {
        uint256 total = 0;

        for (uint256 i = 0; i < 5; i++) {
            total += numbers[i];
        }

        return total;
    }
}