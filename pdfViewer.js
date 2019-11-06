function designerPdfViewer(h, word) {
    let array = [];
    for (let i = 0; i < word.length; i++) {
        let x = word.toLowerCase().charCodeAt(i) - 97;
        array.push(h[x]);
    }
    return Math.max(...array) * word.length

}

designerPdfViewer([1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], 'ahaksdbc');

