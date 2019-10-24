function hurdleRace(k, height) {

    let doses = (Math.max(...height) - k);
    console.log(doses)

    if (doses <= 0) {
        return 0;
    } else {
        return doses;
    }

}

let k = 4;
let height = [1, 6, 3, 5, 2];


console.log(Math.max(...height))