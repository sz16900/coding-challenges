function sockMerchant(n, ar) {

    let x = [...ar]
    let counts = {};
    for (let i = 0; i < x.length; i++) {
        if (!(x[i] in counts)) {
            counts[ar[i]] = 0;
        }
        counts[x[i]]++;
    }
    let match = 0;
    let key = 0;
    console.log(counts);
    for (key in counts) {
        if (counts[key] % 2 === 0) {
            match += (counts[key] / 2);

        }
        if (counts[key] % 2 !== 0 && counts[key] > 1) {
            counts[key] = counts[key] - 1;
            match += (counts[key] / 2);
        }
    }


    return match;

}

console.log(sockMerchant(9, [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]))