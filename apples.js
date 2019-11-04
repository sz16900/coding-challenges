function countApplesAndOranges(s, t, a, b, apples, oranges) {

    let x = 0;
    let y = 0;



    for (let i = 0; i < apples.length; i++) {
        if (Math.abs(apples[i] + a) >= s && Math.abs(apples[i] + a) <= t) {
            x++;
        }
    }
    for (let i = 0; i < oranges.length; i++) {
        if (Math.abs(oranges[i] + b) >= s && Math.abs(oranges[i] + b) <= t) {
            y++;
        }
    }

    console.log(x);
    console.log(y);


}


console.log(countApplesAndOranges(7, 11, 5, 15, [-2, 2, 1], [5, -6]));