//
//  main.swift
//  calculator-v2
//
//  Created by apple on 4/6/16.
//  Copyright © 2016 apple. All rights reserved.
//

import Foundation

print("Hello, World!")

// Calculator functions
let addition: (Int, Int) -> Int = { (left, right) in
    return left + right;
}

let subtraction: (Int, Int) -> Int = { (left, right) in
    return left - right;
}

let multiplication: (Int, Int) -> Int = { (left, right) in
    return left * right;
}

let division: (Int, Int) -> Int = { (left, right) in
    return left / right;
}

typealias mathOp = (Int, Int) -> Int;

let mathOperation: (Int, Int, mathOp) -> Int = { (left, right, op) in
    return op(left, right);
}

print("\(mathOperation(3, 5, addition))");
print("\(mathOperation(108, 3, addition))");
print("\(mathOperation(3, 5, subtraction))");
print("\(mathOperation(108, 3, subtraction))");
print("\(mathOperation(3, 5, multiplication))");
print("\(mathOperation(108, 3, multiplication))");
print("\(mathOperation(3, 5, division))");
print("\(mathOperation(108, 3, division))");

// Array fun functions
let arrAddition: ([Int]) -> Int = { (arr) in
    var total: Int = 0;
    for i in 0 ..< arr.count {
        total += arr[i];
    }
    return total;
}

let arrMultiply: ([Int]) -> Int = { (arr) in
    var total: Int = 0;
    for i in 0 ..< arr.count {
        total = total*arr[i];
    }
    return total;
}

let arrCount: ([Int]) -> Int = { (arr) in
    return arr.count;
}

let arrAvg: ([Int]) -> Int = { (arr) in
    return arrAddition(arr) / arr.count;
}

typealias arrayOp = ([Int]) -> Int;

let arrayOperation: ([Int], arrayOp) -> Int = { (arr, op) in
    return op(arr);
}

print("\(arrayOperation([1, 2, 3, 4], arrAddition))");
print("\(arrayOperation([6, 4, 2, 1], arrAddition))");
print("\(arrayOperation([1, 2, 3, 4], arrMultiply))");
print("\(arrayOperation([6, 4, 2, 1], arrMultiply))");
print("\(arrayOperation([1, 2, 3, 4], arrCount))");
print("\(arrayOperation([6, 4, 2, 1, 6, 4, 2, 1], arrCount))");
print("\(arrayOperation([1, 2, 3, 4], arrAvg))");
print("\(arrayOperation([6, 4, 2, 1], arrAvg))");

enum exception: ErrorType {
    case illegalInputException
}

typealias intTuples = (Int, Int);

func tupleAdd (left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
//    guard left == (1, 1) else {
//        throw exception.illegalInputException;
//    }
    
//    guard right == (1, 1) else {
//        throw exception.illegalInputException;
//    }
    
    return (addition(left.0, right.0), addition(left.1, right.1));
}



func tupleSub(left: (Int, Int), right: (Int, Int)) -> (Int, Int) {
//    guard left == (1, 1) else {
//        throw exception.illegalInputException;
//    }
    
//    guard right == (1, 1) else {
//        throw exception.illegalInputException;
//    }
    
    return (subtraction(left.0, right.0), subtraction(left.1, right.1));
}

let tupleOperation: ((Int, Int), (Int, Int), ((Int, Int), (Int, Int)) -> (Int, Int)) -> (Int, Int) = { (left, right, op) in
    return op(left, right);
}

print("\(tupleAdd((1, 1), right: (1, 2)))");
print("\(tupleAdd((7, 8), right: (9, 10)))");
print("\(tupleSub((1, 1), right: (1, 2)))");
print("\(tupleSub((7, 8), right: (9, 10)))");
print("\(tupleOperation((1, 2), (3, 4), tupleAdd))");
print("\(tupleOperation((0, 0), (2, 5), tupleSub))");

func dicAdd(left: Dictionary <String, Int>, right: Dictionary <String, Int>) -> Dictionary <String, Int> {
//    guard left == ["x": 1, "y": 1] else {
//        throw exception.illegalInputException;
//    }
    
//    guard right == ["x": 1, "y": 1] else {
//        throw exception.illegalInputException;
//    }
    
    let result = [
        "x" : left["x"]! + right["x"]!,
        "y" : left["y"]! + right["y"]!
    ]
    
    return result;
}

func dicSub(left: Dictionary <String, Double>, right: Dictionary <String, Double>) -> Dictionary <String, Double> {
    //    guard left == ["x": 1, "y": 1] else {
    //        throw exception.illegalInputException;
    //    }
    
    //    guard right == ["x": 1, "y": 1] else {
    //        throw exception.illegalInputException;
    //    }
    
    let result = [
        "x" : left["x"]! - right["x"]!,
        "y" : left["y"]! - right["y"]!
    ]
    
    return result;
}

var a = [
    "x": 2,
    "y": 5
];



var b = [
    "x": 3,
    "y": 1
]

print("\(dicAdd(a, right: b))");
print("\(dicAdd(["x": 12, "y": 71], right: ["x": 18, "y": 90]))");
//print("\(dicSub(a, right: b))");
print("\(dicSub(["x": 12, "y": 71], right: ["x": 18, "y": 90]))");



