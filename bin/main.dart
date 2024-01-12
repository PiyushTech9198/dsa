import 'list/list_dsa.dart';

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int searchValue = 7;

  int result =
      ListDsa().binarySearch(listOfNumber: numbers, value: searchValue);

  if (result != -1) {
    print('$searchValue found at index $result');
  } else {
    print('$searchValue not found in the list');
  }
}
