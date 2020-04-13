function catAndMouse(x, y, z) {

    let catA = Math.abs(x - z);
    let catB = Math.abs(y - z);
    // let mouse = 0;

    if (catA === catB) {
        console.log("Mouse C")
    } else if (catA < catB) {
        console.log("Cat A");
    } else {
        console.log("Cat B")
    }



}

catAndMouse(1, 3, 2);