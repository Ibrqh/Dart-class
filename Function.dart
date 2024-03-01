// Task 1
int addTwo(int a, int b) {
  return a + b;
}

// Task 2
int subtractTwo(int a, int b) {
  return a - b;
}

// Task 3
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4
double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw Exception('Cannot divide by zero');
  }
}

// Task 5
int stringLength(String str) {
  return str.length;
}

// Task 6
T getFirstElement<T>(List<T> list) {
  if (list.isNotEmpty) {
    return list.first;
  } else {
    throw Exception('List is empty');
  }
}

void main() {
  // Testing the functions
  print(addTwo(3, 4)); // Output: 7
  print(subtractTwo(10, 5)); // Output: 5
  print(multiplyTwo(2, 6)); // Output: 12
  print(divideTwo(10, 2)); // Output: 5.0
  print(stringLength("Hello, World!")); // Output: 13
  print(getFirstElement([1, 2, 3])); // Output: 1
}
