import Foundation

class Rectangle {
    // Attributes as given in the question
    var height: Int
    var width: Int
    var color: String
    
    // Initializer as mentioned in question
    init(height: Int, width: Int, color: String) {
        self.height = height
        self.width = width
        self.color = color
    }
    
    // Method to calculate and print the perimeter of the rectangle
    func getPerimeter() {
        let perimeter = 2 * (height + width)
        print("The perimeter of the rectangle is \(perimeter).")
    }
    
    // Method to print the color of the rectangle
    func printColor() {
        print("The color of the rectangle is \(color).")
    }
}

let rectangle = Rectangle(height: 7, width: 15, color: "Red")
rectangle.getPerimeter()
rectangle.printColor()

