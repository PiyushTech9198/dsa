import 'dart:math';

class ListDsa {
  //// Largest in List \\\\

  static double largestNumberInList({required List<double> listOfNumbers}) {
    /// Largest number is Zero
    double largestNumber = double.minPositive;
    for (var i = 0; i < listOfNumbers.length; i++) {
      if (largestNumber < listOfNumbers[i]) {
        largestNumber = listOfNumbers[i];
      }
    }
    return largestNumber;
  }

  //// Smallest in List \\\\

  static double smallestNumberInList({required List<double> listOfNumbers}) {
    /// Smallest number is Zero
    double smallestNumber = double.infinity;
    for (var i = 0; i < listOfNumbers.length; i++) {
      if (smallestNumber > listOfNumbers[i]) {
        smallestNumber = listOfNumbers[i];
      }
    }
    return smallestNumber;
  }

  // Binary Search on List
int binarySearch({required List<int> listOfNumber, required int value}) {
  int start = 0;
  int end = listOfNumber.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;

    // Comparison
    if (listOfNumber[mid] == value) {
      return mid;
    }

    if (listOfNumber[mid] < value) {
      start = mid + 1; // Fix: Move the 'start' index to the next element
    } else {
      end = mid - 1; // Fix: Move the 'end' index to the previous element
    }
  }

  return -1; // Return -1 if the value is not found
}





   // Using for loop \\

  static void reverseForLoop({required List<int> numbers}) {

  // Manually swap elements
  for (int i = 0, j = numbers.length - 1; i < j; i++, j--) {
    int temp = numbers[i];
    numbers[i] = numbers[j];
    numbers[j] = temp;
  }

}


///  Using while loop \\

static void reverseWhileLoop({required List<int> numbers}){

  // Using while loop to reverse the array in-place
  int start = 0;
  int end = numbers.length - 1;

  while (start < end) {
    // Swap elements at start and end indices
    int temp = numbers[start];
    numbers[start] = numbers[end];
    numbers[end] = temp;

    // Move indices towards the center
    start++;
    end--;
  }

  }

}





