double sum(double num1, double num2) {
  return num1 + num2;
}

void main() {
  print(sum(5, 3)); // Example usage
}

void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void main() {
  String fruit = 'apple';

  switch (fruit) {
    case 'apple':
      print('It is a fruit.');
      break;
    case 'banana':
      print('It is a fruit.');
      break;
    case 'carrot':
      print('It is a vegetable.');
      break;
    default:
      print('Unknown');
  }
}

void main() {
  int i = 20;
  while (i >= 10) {
    print(i);
    i--;
  }
}

void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

void main() {
  checkEvenOdd(5); // Example usage
}

int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}

void main() {
  List<int> numbers = [5, 10, 3, 8, 15];
  print('Largest number: ${findLargest(numbers)}');
}

void main() {
  try {
    var result = 10 ~/ 0; // Division by zero
    print('Result: $result'); // This line won't be executed
  } catch (e) {
    print('Error: $e');
  }
}
