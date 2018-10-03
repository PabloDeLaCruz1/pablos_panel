const compare = (numbers, value) => {
    let lesserArr = [];
    let equalArr = [];
    let greaterArr = [];

    numbers.forEach(ele => {
        if(ele === value){
            equalArr.push(ele);
        } else if(ele < value){
            lesserArr.push(ele);
        }else{
            greaterArr.push(ele);
        }
    });

    return [lesserArr, equalArr, greaterArr];
}
console.log(compare([10, -30, -45, 4, 21, -30], -30)); // [[-45], [-30, -30], [10, 4, 21]]

