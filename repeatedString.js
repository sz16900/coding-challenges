function repeatedString(s, n) {
    let x = s.split('a').length - 1;
    console.log(x);

    // let string = s;
    // let counter = 0;
    // for (let i = 0; i < n; i++) {
    //     if (string.length < n) {
    //         string = string + s;
    //     }
    //     if (string[i] == "a") {
    //         counter = counter + 1;
    //     }

    // }


    // return counter;

}

console.log(repeatedString("abaababa", 10));