import UIKit
// How to solve a problem with recursion
// https://www.youtube.com/watch?v=oKndim5-G94
// https://nostarch.com/download/samples/TLAP_ch6.pdf

// Step one:
// Write an iterative function to solve the problem
//






var firstSensor = [15, -4, 56, 10, -23]

var secondSensor = [14, -9, 56, 14, -23]


func totalDiff(sensorA:[Int], sensorB:[Int], size:Int )->Int{
    var diff = 0
    var i = 0
    while(i < size){
        diff += abs(sensorA[i] - sensorB[i])
        i += 1
    }
    
    return diff
}

// Step two:
// Write a "dispatcher" function
//

// Step three:
// remove call to iterative function and call the dispatcher. now it is recursive

func totalDiffDispatcher(sensorA:[Int], sensorB:[Int], size:Int )->Int{
    if size == 0{return 0}
    var lastElementDiff = abs(sensorA[size - 1] - sensorB[size - 1])
    // change diff to to call "totalDiffDispatcher" instead of "totalDiff"
    var diff = totalDiffDispatcher(sensorA: sensorA, sensorB: sensorB, size: size - 1) + lastElementDiff
    return diff
}

totalDiffDispatcher(sensorA: firstSensor, sensorB: secondSensor, size: 5)
