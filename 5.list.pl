% find the membership of X in the array.

member(X,[X|_]). % if X is head of the list that mean X is in this array, return true.
member(X,[_|T]):-member(X,T). % if X is not the head that means it can be in the next index of the array.
                              % So, we do recursive by call member(X,T) which is the first statement again.

/* compare to JavaScript
function isValueExist(value, arr) {
    let X = value;
    let array = arr;
 
    let i;
    for (i = 0; i < array.length; i++) {
        if ( X === array[i]) return true;
    }
 
    return false;
} 

console.log(isValueExist(2, [1,2,3])); // return true

*/