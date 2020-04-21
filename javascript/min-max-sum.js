function miniMaxSum(arr) {
    let sum = 0;
    let x = Math.min(...arr);
    let y = Math.max(...arr);

    for (let i = 0; i < arr.length; i++) {
        sum += arr[i];
    }

    console.log(`${sum - y} ${sum - x}`);

}

miniMaxSum([1, 2, 3, 4, 5])