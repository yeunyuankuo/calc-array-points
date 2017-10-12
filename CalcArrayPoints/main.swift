//
//  main.swift
//  CalcArrayPoints
//
//  Created by Jessie Kuo on 11/10/2017.
//  Copyright © 2017 appcat. All rights reserved.
//

import Foundation

// Build a calculator

func add(a: Int?, b: Int?) -> Int? {
    if (a != nil && b != nil) {
        return a! + b!
    } else {
        return nil
    }
}

func subtract(a: Int?, b: Int?) -> Int? {
    if (a != nil && b != nil) {
        return a! - b!
    } else {
        return nil
    }
}

func multiply(a: Int?, b: Int?) -> Int? {
    if (a != nil && b != nil) {
        return a! * b!
    } else {
        return nil
    }
}

func divide(a: Int?, b: Int?) -> Int? {
    if (a != nil && b != nil) {
        return a! / b!
    } else {
        return nil
    }
}

func basicOperator(a: Int?, b: Int?, operation: (Int?, Int?) -> Int?) -> Int? {
    if (a != nil && b != nil) {
        return operation(a!, b!)
    } else {
        return nil
    }
}

// Array fun

func add(_ array: [Int]?) -> Int? {
    if (array != nil) {
        return array!.reduce(0, +)
    } else {
        return nil
    }
}

func mul(_ array: [Int]?) -> Int? {
    if (array != nil) {
        return array!.reduce(1, *)
    } else {
        return nil
    }
}

func count(_ array: [Int]?) -> Int? {
    if (array != nil) {
        return array!.count
    } else {
        return nil
    }
}

func avg(_ array: [Int]?) -> Int? {
    if (array != nil) {
        return add(array)! / count(array)!
    } else {
        return nil
    }
}

func operation(array: [Int]?, op: ([Int]?) -> Int?) -> Int? {
    if (array != nil) {
        return op(array)
    } else {
        return nil
    }
}



// Points

func addPoints(one: (x: Double?, y: Double?)?, two: (x: Double?, y: Double?)?) -> (Double, Double)? {
    if (one != nil && two != nil && one!.x != nil && one!.y != nil && two!.x != nil && two!.y != nil) {
        return (one!.x! + two!.x!, one!.y! + two!.y!)
    } else {
        return nil
    }
}

func subPoints(one: (x: Double?, y: Double?)?, two: (x: Double?, y: Double?)?) -> (Double, Double)? {
    if (one != nil && two != nil && one!.x != nil && one!.y != nil && two!.x != nil && two!.y != nil) {
        return (one!.x! - two!.x!, one!.y! - two!.y!)
    } else {
        return nil
    }
}

func addDictPoints(one: [String: Double?]?, two: [String: Double?]?) -> (Double, Double)? {
    var newPoint = (x: 0.0, y: 0.0)
    if (one != nil && two != nil && one!["x"]! != nil && one!["y"]! != nil && two!["x"]! != nil && two!["y"]! != nil) {
        newPoint.x = one!["x"]!! + two!["x"]!!
        newPoint.y = one!["y"]!! + two!["y"]!!
    } else {
        return nil
    }
    return newPoint
}

func subDictPoints(one: [String: Double?]?, two: [String: Double?]?) -> (Double, Double)? {
    var newPoint = (x: 0.0, y: 0.0)
    if (one != nil && two != nil && one!["x"]! != nil && one!["y"]! != nil && two!["x"]! != nil && two!["y"]! != nil) {
        newPoint.x = one!["x"]!! - two!["x"]!!
        newPoint.y = one!["y"]!! - two!["y"]!!
    } else {
        return nil
    }
    return newPoint
}

// Test
print("add: \(add(a:1, b:2)!)")
print("sub: \(subtract(a:1, b:2)!)")
print("mul: \(multiply(a:1, b:2)!)")
print("divide: \(divide(a:1, b:2)!)")
//print("baiscOp: \(basicOperator(a:5, b:5, operation: multiply)!)")

print("add: \(add([1, 2, 3])!)")
print("count: \(count([1, 2, 3])!)")
print("mul: \(mul([1, 2, 3])!)")
print("avg: \(avg([1, 2, 3])!)")
print("operation: \(operation(array:[1, 2, 3, 4, 5], op:mul)!)")

let p1: [String: Double] = ["x": 5.0, "y": 5.0]
let p2: [String: Double] = ["x": 1.0, "y": 2.0]
print("addPoints: \(addPoints(one: (1, 1), two: (1, 3))!)")
print("subPoints: \(subPoints(one: (1, 1), two: (1, 3))!)")
print("addDictPoints: \(addDictPoints(one:p1, two:p2)!)")
print("subDictPoints: \(subDictPoints(one:p1, two:p2)!)")
