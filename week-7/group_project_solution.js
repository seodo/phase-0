//Release 4 (John Seo)

// 1.   As a user, I want a function called 'sumOfSet' that takes a set of numbers and adds them up, returning the total.
// 2.  As a user, I want a function called 'mean' that takes a set of numbers and calculates their average.
// 3.  As a user, I want a function called 'median' that takes a set of numbers and returns its median. 


//SUM
var list = [2,5,8,5,4,3,3];
function sumOfSet(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  return sum;
}

console.log(sumOfSet(list));

//AVERAGE

function mean(array){
  var sum = 0;
  for(var i = 0; i < array.length; i++) {
    sum += array[i]
  }
  var avg = sum/(array.length) ;
  return Math.round(avg);
}
var list = [2,5,8,5,4,3,3];
console.log(mean(list));

// MEDIAN

function median(array){
  var median = array.sort();
  var length = (median.length/2);
  var odd = Math.round(median.length/2);
    if (median.length % 2 != 0)
      return (median[odd]);
    else (median.length % 2 == 0)
      return (median[length] + median[length-1])/2
}
var list = [2,1,3,4,6,5,7,8];
console.log(median(list));
