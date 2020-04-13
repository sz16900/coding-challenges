function viralAdvertising(n) {
    let comulative = 2;
    let liked = 2;
    let shared = 5;
    for (let i = 1; i < n; i++) {
        shared = liked * 3;
        liked = Math.floor(shared / 2);
        comulative = comulative + liked;
    }
    return comulative;

}

viralAdvertising(99);
viralAdvertising(991);
viralAdvertising(994);
viralAdvertising(9339);
viralAdvertising(12399);
viralAdvertising(111199);
viralAdvertising(994);
viralAdvertising(9339);
viralAdvertising(12399);
viralAdvertising(111199);
viralAdvertising(994);
viralAdvertising(9339);
viralAdvertising(12399);
viralAdvertising(111199);