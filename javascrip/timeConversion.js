function timeConversion(s) {
    let time = s.slice(0, 2);
    let slicedTime = s.slice(2, s.length - 2)
    let addTime = Number(time);
    if (s.includes("PM")) {
        let x = addTime + 12;
        if (x === 24) {
            return time + slicedTime;
        } else {
            return x + slicedTime;
        }
    } else if (time === "12" && s.includes("AM")) {
        return "00" + slicedTime;
    } else {
        return time + slicedTime;
    }
}


console.log(timeConversion("12:00:00AM"));
console.log(timeConversion("12:00:00PM"));
console.log(timeConversion("11:59:59AM"));
console.log(timeConversion("11:59:59PM"));
console.log(timeConversion("01:59:59AM"));
