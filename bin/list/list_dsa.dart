class ListDsa {
  /// Finds the largest number in a given list of doubles.
  /// Returns double.minPositive if the list is empty.
  double largestNumberInList({required List<double> listOfNumber}) {
    // Initialize the largestNumber with the smallest positive double value
    double largestNumber = double.minPositive;

    // Iterate through the list to find the largest number
    for (var i = 0; i < listOfNumber.length; i++) {
      // Check if the current element is larger than the current largestNumber
      if (largestNumber < listOfNumber[i]) {
        // Update the largestNumber if the current element is larger
        largestNumber = listOfNumber[i];
      }
    }

    // Return the largestNumber found in the list
    return largestNumber;
  }

  /// Finds the smallest number in a given list of doubles.
  /// Returns double.infinity if the list is empty.
  double smallestNumberInList({required List<double> listOfNumber}) {
    // Initialize the smallestNumber with positive infinity
    double smallestNumber = double.infinity;

    // Iterate through the list to find the smallest number
    for (var i = 0; i < listOfNumber.length; i++) {
      // Check if the current element is smaller than the current smallestNumber
      if (smallestNumber > listOfNumber[i]) {
        // Update the smallestNumber if the current element is smaller
        smallestNumber = listOfNumber[i];
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

  /// Prints all pairs of integers in the given list.
  ///
  /// For each element at index i, this function prints pairs with all elements
  /// at indices greater than i.
  /// @param [listOfNumber] The list of integers.
  /// Example:
  /// If the input list is [1, 2, 3], the output will be:
  /// (1, 2)
  /// (1, 3)
  /// (2, 3)
  ///
  /// Note: This function assumes the list contains integers.
  static void printPairs({required List<int> listOfNumber}) {
    // Outer loop iterates through each element in the list
    for (var i = 0; i < listOfNumber.length; i++) {
      int currentNumber = listOfNumber[i];

      // Inner loop iterates through elements with higher indices than i
      for (var j = i + 1; j < listOfNumber.length; j++) {
        // Print the pair (currentNumber, listOfNumber[j])
        print('($currentNumber, ${listOfNumber[j]})');
      }
    }
  }

/// Prints all possible subArrays of the given list, calculates their sum,
/// and identifies the smallest and largest sums.
///
/// For each element at index i, this function prints subArrays
/// starting from that index and extending to the end of the list.
/// Additionally, it calculates and prints the sum of each subArray,
/// and identifies the smallest and largest sums.
///
/// Example:
/// If the input list is [1, 2, 3], the output will be:
/// 1
/// Sum is: 1
///
/// 1 2
/// Sum is: 3
///
/// 1 2 3
/// Sum is: 6
///
/// 2
/// Sum is: 2
///
/// 2 3
/// Sum is: 5
///
/// 3
/// Sum is: 3
///
/// Largest is: 6
/// Smallest is: 1
///
/// @param [listOfNumber] The list of integers.
static void subArray({required List<int> listOfNumber}) {
  // Initialize variables for sum, smallest, and largest
  int sumIs = 0;
  double smallestNumber = double.maxFinite;
  double largestNumber = double.minPositive;

  // Outer loop iterates through each element in the list
  for (int i = 0; i < listOfNumber.length; i++) {
    int start = i;

    // Middle loop determines the end index for the subArray
    for (int j = i; j < listOfNumber.length; j++) {
      int end = j;

      // Inner loop prints the elements in the subArray
      for (int k = start; k <= end; k++) {
        // Print the element
        sumIs = sumIs + listOfNumber[k];
        print(listOfNumber[k]);
      }

      // Print the sum of the subArray
      print('Sum is: $sumIs');

      // Update smallest and largest sums
      if (sumIs > largestNumber) {
        largestNumber = sumIs.toDouble();
      }
      if (sumIs < smallestNumber) {
        smallestNumber = sumIs.toDouble();
      }

      // Reset sum for the next subArray
      sumIs = 0;

      // Print a newline after each subArray
      print('');
    }
  }

  // Print the overall largest and smallest sums
  print('Largest is: $largestNumber');
  print('Smallest is: $smallestNumber');
}


 
}
