// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices _choice) external {
        require(!hasVoted(msg.sender), "Already voted.");
        votes.push(Vote({
            choice: _choice,
            voter: msg.sender
        }));
    }

    function changeVote(Choices _newChoice) external {
        bool found = false;
        
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = _newChoice;
                found = true;
                break;
            }
        }

        // 3. 투표를 찾지 못했다면 Revert 시킵니다.
        require(found, "No vote found to change.");
    }

    function hasVoted(address _voter) public view returns (bool) {
        return findVote(_voter).voter != address(0);
    }

    function findVote(address _voter) internal view returns (Vote memory) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == _voter) {
                return votes[i];
            }
        }
        return Vote(Choices(0), address(0));
    }

    function findChoice(address _voter) external view returns (Choices) {
        return findVote(_voter).choice;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices _choice) external {
        require(!hasVoted(msg.sender), "Already voted.");
        votes.push(Vote({
            choice: _choice,
            voter: msg.sender
        }));
    }

    function changeVote(Choices _newChoice) external {
        bool found = false;
        
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = _newChoice;
                found = true;
                break;
            }
        }

        // 3. 투표를 찾지 못했다면 Revert 시킵니다.
        require(found, "No vote found to change.");
    }

    function hasVoted(address _voter) public view returns (bool) {
        return findVote(_voter).voter != address(0);
    }

    function findVote(address _voter) internal view returns (Vote memory) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == _voter) {
                return votes[i];
            }
        }
        return Vote(Choices(0), address(0));
    }

    function findChoice(address _voter) external view returns (Choices) {
        return findVote(_voter).choice;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices _choice) external {
        require(!hasVoted(msg.sender), "Already voted.");
        votes.push(Vote({
            choice: _choice,
            voter: msg.sender
        }));
    }

    function changeVote(Choices _newChoice) external {
        bool found = false;
        
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = _newChoice;
                found = true;
                break;
            }
        }

        // 3. 투표를 찾지 못했다면 Revert 시킵니다.
        require(found, "No vote found to change.");
    }

    function hasVoted(address _voter) public view returns (bool) {
        return findVote(_voter).voter != address(0);
    }

    function findVote(address _voter) internal view returns (Vote memory) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == _voter) {
                return votes[i];
            }
        }
        return Vote(Choices(0), address(0));
    }

    function findChoice(address _voter) external view returns (Choices) {
        return findVote(_voter).choice;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
    enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote[] public votes;

    function createVote(Choices _choice) external {
        require(!hasVoted(msg.sender), "Already voted.");
        votes.push(Vote({
            choice: _choice,
            voter: msg.sender
        }));
    }

    function changeVote(Choices _newChoice) external {
        bool found = false;
        
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == msg.sender) {
                votes[i].choice = _newChoice;
                found = true;
                break;
            }
        }

        // 3. 투표를 찾지 못했다면 Revert 시킵니다.
        require(found, "No vote found to change.");
    }

    function hasVoted(address _voter) public view returns (bool) {
        return findVote(_voter).voter != address(0);
    }

    function findVote(address _voter) internal view returns (Vote memory) {
        for (uint i = 0; i < votes.length; i++) {
            if (votes[i].voter == _voter) {
                return votes[i];
            }
        }
        return Vote(Choices(0), address(0));
    }

    function findChoice(address _voter) external view returns (Choices) {
        return findVote(_voter).choice;
    }
}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }

	struct Vote {
		Choices choice;
		address voter;
	}
	
	function createVote (Choices choice) external view returns (Vote memory){
	        return Vote({
            choice: choice,
            voter: msg.sender
        });
	}
	
	}
//--
// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Contract {
	enum Choices { Yes, No }

    struct Vote {
        Choices choice;
        address voter;
    }

    Vote public vote;

    function createVote(Choices _choice) external {
        // 3. 전달받은 _choice와 msg.sender를 사용하여 vote 변수에 저장
        vote = Vote({
            choice: _choice,
            voter: msg.sender
        });
    }
}