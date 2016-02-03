
// Pseudocode 
// create function to make a new list.
// Input: string
// Output: hash of items and quantity

// Add to list
// create a function that adds an item with quantity.

// Remove from list
// create a function that removes an item.

// Update list
// create a function that takes the new list or new quantity and replaces old values.

// create a function that displays the list.
// the list should list "You have QUANTITY ITEM in your list."



//initial solution
// var createList = function(items){
//  var hashList = {};
//  var listArr = items.split(" ");
//  for (var item = 0; item < listArr.length; item++){
//     hashList[listArr[item]] = 1;
//   }
//  return hashList
// }

// var addQuanity = function(list, item, qty){
//   if (list[item] === undefined){
//     list[item] = qty;
//   }
//   else {
//     list[item] += qty;
//   }
// }


// var remove_item = function(list,item){
//   delete list[item]
// }

// var update_quantity = function(list, item, quantity){
//   list[item] = quantity;
// }

// var print_list = function(list){
//   for (var item in list){
//     console.log("You need " + list[item] + " " + [item] + ".")
//   }
// }



//refactored solution

var createList = function(items){
 var hashList = {};
 var listArr = items.split(" ");
 for (var item = 0; item < listArr.length; item++){
    hashList[listArr[item]] = 1;
  }
 return hashList
}


var remove_item = function(list,item){
  delete list[item]
}

var update_quantity = function(list, item, quantity){
 if (list[item] === undefined){
    list[item] = quantity;
  }
  else {
    list[item] += quantity;
  }
}


var print_list = function(list){
  for (var item in list){
    console.log("You need " + list[item] + " " + [item] + ".")
  }
}
//Driver code
var hello = "orange chicken tea water"
var sample = createList(hello)
// console.log(sample)
// var sample = new createList("orange tea chicken water");
//  console.log(sample)
remove_item(sample, "tea");
console.log(sample)
update_quantity(sample, "tea", 30)
 console.log(sample)
print_list(sample)

//reflection
// What concepts did you solidify in working on this challenge?
// (reviewing the passing of information, objects, constructors, etc.)
// - I got to review how to pass information. For example, I made a variable called sample which was the output of the function "createList", which let me recycle it for the other variables.
// What was the most difficult part of this challenge?
// Since this was basically redoing the same challenge, the only difficulty was translating Ruby into JS. The ideas and logic stayed the same.
// Did an array or object make more sense to use and why?
// Although the language changed from Ruby to Javascript, the logic was the same, so I kept the hashes.