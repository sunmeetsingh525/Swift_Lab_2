import Foundation

// Rectangle class with attributes and methods
class Rectangle {
    let height: Int
    let width: Int
    let color: String
    
    /**
     Initializes a rectangle object.
     
     - Parameters:
        - height: The height of the rectangle.
        - width: The width of the rectangle.
        - color: The color of the rectangle.
     */
    init(height: Int, width: Int, color: String) {
        self.height = height
        self.width = width
        self.color = color
    }
    
    /**
     Calculates and returns the perimeter of the rectangle.
     
     - Returns: The perimeter of the rectangle.
     */
    func getPerimeter() -> Int {
        return 2 * (height + width)
    }
    
    /**
     Prints the color of the rectangle.
     */
    func printColor() {
        print("The rectangle's color is \(color).")
    }
}

// Example usage
let rectangle = Rectangle(height: 5, width: 10, color: "Blue")
let perimeter = rectangle.getPerimeter()
print("The perimeter of the rectangle is: \(perimeter) units.")

rectangle.printColor() // Output: The rectangle's color is Blue.
