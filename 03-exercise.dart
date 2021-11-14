// Take a list, say for example this one:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// and write a program that prints out all the elements of the list that are less than 5.

void main(List<String> args) {
  List<int> numberList = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  numberList = numberList.where((number) => number < 5).toList();
  print(numberList);
  print([for (var i in numberList) if (i < 5) i]);
}
