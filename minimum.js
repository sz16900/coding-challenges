function minimumDistances(a) {
    let x = [];
    for (let i = 0; i < a.length; i++) {
        for (let j = 0; j < a.length; j++) {
            let z = 0;
            if (a[i] === a[j] && i - j !== 0) {
                x.push(Math.abs(j - i))
            }

        }
    }
    console.log(x.length);
    if (x.length > 0) { return Math.min(...x) }
    return -1


}

console.log(minimumDistances([2, 0, 3, 4, 1, 7]));