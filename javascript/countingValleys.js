function countingValleys(n, s) {

    let seaLevel = 0;
    let valleys = 0;
    let inValley = false;

    for (let i = 0; i < s.length; i++) {
        if (seaLevel === 0) {
            inValley = false;
        }
        if (s[i] === 'U') {
            seaLevel++;
        } else {
            seaLevel--;
            if (seaLevel < 0 && inValley === false) {
                inValley = true;
                valleys++;
            }
        }
    }

    return valleys;
}

console.log(countingValleys(8, "DDUUDDUDUUUD"));