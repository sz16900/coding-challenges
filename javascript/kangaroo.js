function kangaroo(x1, v1, x2, v2) {
    let counter = 0;

    while (counter < 1000) {
        counter += 1;
        x1 += v1;
        x2 += v2;
        if (x1 === x2) {
            return "YES"
        }

    }
    return "NO"

}

console.log(kangaroo(0, 3, 4, 2));