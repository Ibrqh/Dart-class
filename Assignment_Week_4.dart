import 'dart:io';

// Interface for a shape
abstract class Shape {
  double calculateArea();
}

// Class representing a rectangle
class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

// Class representing a square, inherits from Rectangle
class Square extends Rectangle {
  Square(double side) : super(side, side);

  // Overrides calculateArea method to calculate area for a square
  @override
  double calculateArea() {
    return width * width;
  }
}

// Class representing a collection of shapes
class ShapeCollection {
  List<Shape> shapes = [];

  // Method to add a shape to the collection
  void addShape(Shape shape) {
    shapes.add(shape);
  }

  // Method to calculate total area of all shapes in the collection
  double totalArea() {
    double total = 0;
    for (var shape in shapes) {
      total += shape.calculateArea();
    }
    return total;
  }
}

// Method to read data from file and initialize Square objects
List<Square> initializeSquaresFromFile(String filename) {
  List<Square> squares = [];
  final file = File(filename);

  try {
    final lines = file.readAsLinesSync();
    for (var line in lines) {
      final side = double.parse(line);
      squares.add(Square(side));
    }
  } catch (e) {
    print("Error reading file: $e");
  }

  return squares;
}

void main() {
  // Initialize squares from file
  final squares = initializeSquaresFromFile('squares.txt');

  // Create a ShapeCollection and add squares to it
  final collection = ShapeCollection();
  for (var square in squares) {
    collection.addShape(square);
  }

  // Calculate and print total area of all shapes in the collection
  print('Total area of all shapes: ${collection.totalArea()}');
}
