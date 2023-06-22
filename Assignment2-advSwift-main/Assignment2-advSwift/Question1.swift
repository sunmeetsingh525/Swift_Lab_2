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
print("Area of the square is:", squareArea)

let uppercaseString = allCap(string: "hello swift")
print("Uppercased string is:", uppercaseString)

let array1 = [1, 2, 3, 4, 5, 6, 7] // Case where the array has a middle element
if let middleElement = middle(array: array1) {
    print("Middle element:", middleElement)
} else {
    print("No middle element")
}

let array2 = [1, 2, 3, 4] // Case where the array has no middle element
if let middleElement = middle(array: array2) {
    print("Middle element:", middleElement)
} else {
    print("No middle element")
}
