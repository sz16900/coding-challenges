function timeConversion(s) {
    let time = s.slice(0, 2);
    let slicedTime = s.slice(2, s.length - 2)
    let addTime = Number(time);
    if (s.includes("PM")) {
        addTime += 12;
        console.log(addTime + slicedTime);
    } else {
        addTime = Math.abs(addTime - 12);
        console.log(addTime + slicedTime);
    }

}


timeConversion("07:05:45PM");
timeConversion("07:05:45AM");
timeConversion("11:05:45PM");
timeConversion("11:59:45AM");
timeConversion("11:05:45PM");