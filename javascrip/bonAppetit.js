let bill = [4, 1];
let k = [3, 10, 2, 9]
let b = 7

function bonAppetit(bill, k, b) {

    let anaOwes = ((k.reduce((a, b) => a + b)) - k[1]) / 2;
    console.log(anaOwes);
    if (anaOwes !== b) {
        console.log((k.reduce((a, b) => a + b) / 2) - anaOwes)
    } else {
        console.log('Bon Appetit');
    }

}

bonAppetit(bill, k, b);

