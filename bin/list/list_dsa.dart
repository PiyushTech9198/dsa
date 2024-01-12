class ListDsa {
  /// Finds the largest number in a given list of doubles.
  /// Returns double.minPositive if the list is empty.
  double largestNumberInList({required List<double> listOfNumbers}) {
    // Initialize the largestNumber with the smallest positive double value
    double largestNumber = double.minPositive;

    // Iterate through the list to find the largest number
    for (var i = 0; i < listOfNumbers.length; i++) {
      // Check if the current element is larger than the current largestNumber
      if (largestNumber < listOfNumbers[i]) {
        // Update the largestNumber if the current element is larger
        largestNumber = listOfNumbers[i];
      }
    }

    // Return the largestNumber found in the list
    return largestNumber;
  }

  /// Finds the smallest number in a given list of doubles.
  /// Returns double.infinity if the list is empty.
  double smallestNumberInList({required List<double> listOfNumbers}) {
    // Initialize the smallestNumber with positive infinity
    double smallestNumber = double.infinity;

    // Iterate through the list to find the smallest number
    for (var i = 0; i < listOfNumbers.length; i++) {
      // Check if the current element is smaller than the current smallestNumber
      if (smallestNumber > listOfNumbers[i]) {
        // Update the smallestNumber if the current element is smaller
        smallestNumber = listOfNumbers[i];
      }
    }

    // Return the smallestNumber found in the list
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

  static void reverseWhileLoop({required List<int> numbers}) {
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
