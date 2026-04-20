// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IHero {
    function alert() external;
}

contract Sidekick {
    function sendAlert(address hero) external {
        IHero(hero).alert();
    }
}
// ---------------------------------
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero) external {
        // 1. "alert()" 함수의 시그니처를 해싱하여 첫 4바이트(Selector)를 추출합니다.
        bytes4 selector = bytes4(keccak256("alert()"));

        // 2. call을 사용하여 hero 주소로 데이터(selector)를 보냅니다.
        (bool success, ) =  hero.call(abi.encodePacked(sselectorignature));

        // 3. 호출이 성공했는지 확인합니다.
        require(success);
    }
}
//-----
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function sendAlert(address hero, uint256 enemies, bool armed) external {
        (bool success, ) = hero.call(
            abi.encodeWithSignature("alert(uint256,bool)", enemies, armed)
        );
        require(success, "Alert failed");
    }
}
//----
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function relay(address hero, bytes memory data) external {
        // send all of the data as calldata to the hero
        (bool success, ) = hero.call(data);
    }
}
//----
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Sidekick {
    function makeContact(address hero) external {
      (bool success, ) = hero.call(abi.encode(""));
    }
}