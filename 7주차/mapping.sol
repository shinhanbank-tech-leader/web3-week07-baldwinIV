// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	enum ConnectionTypes { 
		Unacquainted,
		Friend,
		Family
	}
	
	mapping(address => mapping(address => ConnectionTypes)) public connections;

	function connectWith(address other, ConnectionTypes connectionType) external {
        connections[msg.sender][other] = connectionType;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

    function createUser() external payable {
		require(users[msg.sender].isActive != true, "You have not voted yet");
        users[msg.sender] = User({
			balance : 100,
			isActive : true
		});
    }

	function transfer(address _recipient, uint _amount) external {
        require(users[msg.sender].isActive, "Sender is not an active user");
        require(users[_recipient].isActive, "Recipient is not an active user");
        require(users[msg.sender].balance >= _amount, "Insufficient balance");

        users[msg.sender].balance -= _amount; // 내 잔액에서 차감
        users[_recipient].balance += _amount; // 상대방 잔액에 추가
    }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
	struct User {
		uint balance;
		bool isActive;
	}

	mapping(address => User) public users;

    function createUser() external payable {
		require(users[msg.sender].isActive != true, "You have not voted yet");
        users[msg.sender] = User({
			balance : 100,
			isActive : true
		});
    }

	function transfer(address _recipient, uint _amount) external {
        require(users[msg.sender].isActive, "Sender is not an active user");
        require(users[_recipient].isActive, "Recipient is not an active user");
        require(users[msg.sender].balance >= _amount, "Insufficient balance");

        users[msg.sender].balance -= _amount; // 내 잔액에서 차감
        users[_recipient].balance += _amount; // 상대방 잔액에 추가
    }

}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    mapping(address => bool) public members;

    function addMember(address addr) external{
        members[addr] = true;
    }

    function isMember(address addr) external returns (bool){
        if(members[addr] == true) return true;
        return false;
    }

     function removeMember(address addr) external{
        members[addr] = false;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    mapping(address => bool) public members;

    function addMember(address addr) external{
        members[addr] = true;
    }

    function isMember(address addr) external returns (bool){
        if(members[addr] == true) return true;
        return false;
    }

     function removeMember(address addr) external{
        members[addr] = false;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Contract {
    mapping(address => bool) public members;

    function addMember(address addr) external{
        members[addr] = true;
    }

    function isMember(address addr) external returns (bool){
        if(members[addr] == true) return true;
        return false;
    }

     function removeMember(address addr) external{
        members[addr] = false;
    }
}

