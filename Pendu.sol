pragma solidity ^0.4.0;
 
contract Pendu {
    
    uint private actualLife;
    string private lettersPlayed;
    string private solutionState;
    address gameMaster;
    
    constructor() public {
            actualLife = 10;
            gameMaster = msg.sender;
    }
    
    function looseLife() public {
        require(msg.sender == gameMaster);
        if(actualLife != 0){
            actualLife = actualLife - 1;
        }
    }
    
    function setLetters(string letter) public returns(string){
        if(actualLife == 0){
            return "You lost. Set up a new game to play again";
        } else {
            lettersPlayed = letter;
            return letter;
        }
    }
    
    function setSolutionState(string solution) public {
        require(msg.sender == gameMaster);
        solutionState = solution;
    }
    
    function getLife() public view returns(uint){
        return actualLife;
    }
    
    function getLetters() public view returns(string){
        return lettersPlayed;
    }
    
    function getSolutionState() public view returns(string){
        return solutionState;
    }
    
}
