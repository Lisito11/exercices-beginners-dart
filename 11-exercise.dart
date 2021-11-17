// Write a program that takes a list of numbers for example

// a = [5, 10, 15, 20, 25]

// and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

void main(List<String> args) {
  List<int> numbers = [5, 10, 15, 20, 25];
  takeLastAndFirst(numbers);
}

final takeLastAndFirst = (List<int> numbers) {
  return print([numbers.first, numbers.last]);
};
