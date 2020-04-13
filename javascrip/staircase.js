function staircase(n) {
    let str1 = "#";
    let str2 = " ";
    let x = 0;

    while (n > 0) {
        x++;
        n--;
        console.log(str2.repeat(n) + str1.repeat(x));

    }
}

staircase(6);