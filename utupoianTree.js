function utopianTree(n) {
    let h = 1;
    for (let i = 0; i < n; i++) {
        if (i % 2 !== 0) {
            h += 1;
            console.log(h)
        } else {

            h = h * 2;
            console.log(h)

        }
    }
    // return h;

    console.log(h);
}

utopianTree(3);