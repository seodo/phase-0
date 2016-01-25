 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You're engaged in a one on one shootout with your nemesis. Kill him
// before he gets to you first.
// Overall mission: Kill the opponent before he kills you first!
// Goals: Win by getting opponent's health to 0.
// Characters: You(Player) and your nemesis(Opponent)
// Objects: Player (name, health, health pack, attack_moves) and Opponent(name, health, health pack, attack_moves)

// Functions: Attack, Heal

// Pseudocode
//Create two objects, the player and opponent.
//	Give them properties, like name, health, health packs, and attack moves
//Create a function that will allow both players to attack 
//Crete a function that will allow both players to use a health pack
//
//

// Initial Code
var player = {
  name: "The Good Guy",
  health: 100,
  health_pack: 2,
  success: false,
  attack_moves:{pistol: 10, rifle: 20, machine_gun: 30}
};

var opponent = {
  name: "The Bad Guy",
  health_pack: 2,
  health: 100,
  success: false,
  attack_moves:{pistol: 10, rifle: 20, machine_gun: 30}
};

function attack(player_name, target){
  var random_number = Math.random();
    if (random_number <= .2){
      target.health -= player_name.attack_moves.machine_gun;
       console.log(player_name.name + " used his machine gun to inflict 30 points on the opponent! " + target.name + " now has " + target.health + " health points!")
    }
  else if (random_number <= .3){
    target.health -= player_name.attack_moves.rifle;
           console.log(player_name.name + " used his rifle to inflict 20 points on the opponent! " + target.name + " now has " + target.health + " health points!")
  }
  else {
    target.health -= player_name.attack_moves.pistol;
     console.log(player_name.name + " used his pistol to inflict 10 points on the opponent! " + target.name + " now has " + target.health + " health points!")
  }
}


function heal(target) {
  if (target.health_pack == 0) {
    console.log("Bro, what are doing? You don't have any health packs to use.");
  } else {
    if (target.health == 100) {
      console.log(target.name + " has full health already!");
    } else if (target.health > 75) {
      target.health = 100;
      target.total_health_packs --;
      console.log("Success!" + target.name + "'s health has been fully restored");
    } else {
      target.health += 25
      target.total_health_packs --;
      console.log("Success!" + target.name + "'s health has been increased to " + target.health.toString() + "!");
    }
  }
}

//Game Start!
// var answer = prompt("Welcome to Shootout, a game of mostly chance and little skill! To start playing, enter 'yes', otherwise enter 'exit'!");

// if (answer == "yes"){
//   console.log("Get ready...")
// } else {
//   console.log("Suit yourself. This game is currently ranked number 1 in the app store!")
// }

while (player.sucess != true || opponent.success != true){
  var action  = prompt("Do you want to attack or heal yourself? Remember, if your health is full, using a health will not work!")
  if (action == "attack"){
    attack(player, opponent);
  } else if (action == "heal"){
    heal(player);
  } else {
    console.log("Enter either 'attack' or 'heal'!");
  }
  if(opponent.health == 0){
    player.success = true
    console.log("Congrats! You've defeated your foe through sheer luck! Give yourself a pat on the back for your hard work!'")
    break
  }
    
//now we have to determine how the opponent will act
var opponents_turn = Math.random();
  if (opponents_turn > .7){
    heal(opponent);
  } else {
    attack(opponent, player);
  }
  if (player.health == 0){
    opponent.success = true
    console.log("Boohoo, you've just died. Better luck next time!")
    break
  }
}



/* Reflection
What was the most difficult part of this challenge?
-The most difficult part of this challenge was breaking down the challenge into smaller steps.
After that, the most difficult part would have to be dealing with the vague "Syntax error" which is really
usless as an error message.

What did you learn about creating objects and functions that interact with one another?
-Creating objects and functions are straightforward, but it's the combining them together that
proves to be a bit difficult. I think practice is key.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
-I used the Math.random method to generate a random number between 1 and 2 in order to determine
which of the attack hash the players would utilize.

How can you access and manipulate properties of objects?
-Manipulating properties of objects is simply a matter of calling them and setting them
equal to the value we want to change.
*/
