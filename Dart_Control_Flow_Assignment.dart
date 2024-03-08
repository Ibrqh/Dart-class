import 'dart:io';

void main() {
  // Prompt the user for a number
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  // Check if input is null or empty
  if (input != null && input.isNotEmpty) {
    // Parse the input to a double
    double number = double.parse(input);

    // Check the conditions and print the message accordingly
    if (number > 10) {
      print('Your number is greater than 10');
    } else if (number < 10) {
      print('Your number is less than 10');
    } else {
      print('Your number is equal to 10');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}
