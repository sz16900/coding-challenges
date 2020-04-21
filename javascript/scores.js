function breakingRecords(scores) {
    let x = 0;
    let y = 0;
    let a = scores[0];
    let b = scores[0];
    for (let i = 0; i < scores.length; i++) {
        if (scores[i] > a) {
            a = scores[i];
            x++;
        }
        else if (scores[i] < b) {
            b = scores[i];
            y++;
        }
    }
    console.log(`${x} ${y}`);
}

console.log(breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42]));