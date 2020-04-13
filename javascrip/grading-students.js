function gradingStudents(grades) {
    let rounded = [];
    for (let i = 0; i < grades.length; i++) {
        let x = grades[i];
        while (x % 5 !== 0) {
            x++;
        }
        if (Math.abs(grades[i] - x) < 3 && grades[i] >= 38) {
            rounded.push(x);
        } else if (grades[i] < 38) {
            rounded.push(grades[i])
        } else {
            rounded.push(grades[i])
        }
    }

    return rounded
}

console.log(gradingStudents([73, 67, 38, 33]))