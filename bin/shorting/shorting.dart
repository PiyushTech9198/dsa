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
}
