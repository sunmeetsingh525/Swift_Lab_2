//
//  Question1.swift
//  Assignment2-advSwift
//
//  Created by Cambrian on 2022-10-17.
//

import Foundation

// Function 1: Calculate the area of a square
func calculateArea(height: Int, width: Int) -> Int {
    return height * width
}

// Function 2: Convert a string to all caps
func allCap(string: String) -> String {
    return string.uppercased()
}
// Function 3: Extract the middle element of an array
func middle(array: [Int]) -> Int? {
    let count = array.count
    guard count > 0 else {
        return nil
    }

    if count % 2 == 0 {
        return nil
    } else {
        let middleIndex = count / 2
        return array[middleIndex]
    }
}

let squareArea = calculateArea(height: 4, width: 2)
print("Area of square is:", squareArea)

let uppercaseString = allCap(string: "hello swift")
print("Uppercased string is:", uppercaseString)

let array1 = [1, 2, 3, 4, 5, 6, 7] // case where array has middle element (odd array size)
if let middleElement = middle(array: array1) { 
    print("Middle element:", middleElement)
} else {
    print("No middle element")
}

let array2 = [1, 2, 3, 4] // case where array has no middle element (even array size)
if let middleElement = middle(array: array2) {
    print("Middle element:", middleElement)
} else {
    print("No middle element")
}