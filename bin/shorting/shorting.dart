class Shorting {
  /// Sorts a list of integers using the Bubble Sort algorithm.
  ///
  /// The Bubble Sort algorithm iterates through the list multiple times,
  /// comparing adjacent elements and swapping them if they are in the wrong order.
  /// This process is repeated until the entire list is sorted in ascending order.
  ///
  /// Parameters:
  ///   - [listOfInt]: The list of integers to be sorted in-place.
  ///
  /// Example usage:
  /// ```dart
  /// bubbleSort(listOfInt: [4, 2, 7, 1, 9]);
  /// ```
  /// The sorted list will be printed to the console after the sorting is complete.
  ///
  /// Output:
  /// ```dart
  /// [1, 2, 4, 7, 9]
  /// ```
  static void bubbleSort({required List<int> listOfInt}) {
    for (var i = 0; i < listOfInt.length - 1; i++) {
      for (var j = 0; j < listOfInt.length - 1 - i; j++) {
        if (listOfInt[j] > listOfInt[j + 1]) {
          // Swap
          int temp = listOfInt[j];
          listOfInt[j] = listOfInt[j + 1];
          listOfInt[j + 1] = temp;
        }
      }
    }
    print(listOfInt);
  }

  static void insertionSort({required List<int> listOfOInt}) {
    // Outer loop iterates through the entire list
    for (var i = 0; i < listOfOInt.length - 1; i++) {
      // Assume the current index is the minimum value
      int minValue = i;

      // Inner loop finds the index of the minimum value in the unsorted portion
      for (var j = i + 1; j < listOfOInt.length; j++) {
        if (listOfOInt[minValue] > listOfOInt[j]) {
          // Update minValue if a smaller element is found
          minValue = j;
        }
      }

      // Swap the minimum value with the first unsorted element
      int temp = listOfOInt[minValue];
      listOfOInt[minValue] = listOfOInt[i];
      listOfOInt[i] = temp;
    }

    // Print the sorted list to the console
    print(listOfOInt);
  }
}
//[1,2,3,4,5,]