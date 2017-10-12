//
//  main.swift
//  CalcArrayPoints
//
//  Created by Jessie Kuo on 11/10/2017.
//  Copyright © 2017 appcat. All rights reserved.
//

import Foundation

// Build a calculator

func add(a: Int, b: Int) -> Int {
    return a + b
}

func subtract(a: Int, b: Int) -> Int {
    return a - b
}

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

func divide(a: Int, b: Int) -> Int {
    return a / b
}

func basicOperator(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Array fun

func add(_ array: [Int]) -> Int {
    return array.reduce(0, +)
}

func mul(array: [Int]) -> Int {
    return array.reduce(1, *)
}

func count(_ array: [Int]) -> Int {
    return array.count
}

func avg(array: [Int]) -> Int {
    return add(array) / count(array)
}

func operation(array: [Int], op: ([Int]) -> Int) -> Int {
    return op(array)
}


// Points

func addPoints(one: (x: Double, y: Double), two: (x: Double, y: Double)) -> (Double, Double) {
    return (one.x + two.x, one.y + two.y)
}

func subPoints(one: (x: Double, y: Double), two: (x: Double, y: Double)) -> (Double, Double) {
    return (one.x - two.x, one.y - two.y)
}

func addDictPoints(one: [String: Double], two: [String: Double]) -> (Double, Double) {
    var newPoint = (x: 0.0, y: 0.0)
    if (one != nil && two != nil && one["x"] != nil && one["y"] != nil && two["x"] != nil && two["y"] != nil) {
        newPoint.x = one["x"]! + two["x"]!
        newPoint.y = one["y"]! + two["y"]!
    }
    return newPoint
}

func subDictPoints(one: [String: Double], two: [String: Double]) -> (Double, Double) {
    var newPoint = (x: 0.0, y: 0.0)
    if (one != nil && two != nil && one["x"] != nil && one["y"] != nil && two["x"] != nil && two["y"] != nil) {
        newPoint.x = one["x"]! - two["x"]!
        newPoint.y = one["y"]! - two["y"]!
    }
    return newPoint
}

// Test
let t1 = (5.0, 5.0)
let t2 = (1.0, 2.0)
let p1: [String: Double] = ["x": 5.0, "y": 5.0]
let p2: [String: Double] = ["x": 1.0, "y": 2.0]
print("addPoints: \(addPoints(one:t1, two:t2))")
print("subPoints: \(subPoints(one:t1, two:t2))")
print("addDictPoints: \(addDictPoints(one:p1, two:p2))")
print("subDictPoints: \(subDictPoints(one:p1, two:p2))")
