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
}
