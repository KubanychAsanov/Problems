import 'dart:io';

import 'stack.dart';

/*
Problem to check correctness parentheses in code.

Task conditions not given, just below examples:

Sample Input 1:
([](){([])})
Sample Output 1:
Success

Sample Input 2:
()[]}
Sample Output 2:
5

Sample Input 3:
{{[()]]
Sample Output 3:
7

Sample Input 4:
{[}
Sample Output 3:
3

Sample Input 5:
foo(bar);
Sample Output 3:
Success

Sample Input 6:
foo(bar[i);
Sample Output 3:
10

*/

void main(List<String> args) {
  Stack stackForIndexes = Stack();

  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    return;
  }

  List<String> chars = input.split('');

  for (int i = 0; i < chars.length; i++) {
    if ('([{'.contains(chars[i])) {
      stackForIndexes.push(i);
    } else if (')]}'.contains(chars[i])) {
      if (stackForIndexes.isEmpty) {
        stackForIndexes.push(i);
        break;
      }

      int lastIndex = stackForIndexes.pop();

      if (chars[lastIndex] == '(' && chars[i] != ')' ||
          chars[lastIndex] == '[' && chars[i] != ']' ||
          chars[lastIndex] == '{' && chars[i] != '}') {
        stackForIndexes.push(i);
        break;
      }
    }
  }

  if (stackForIndexes.isEmpty) {
    print("Success");
  } else
    print(stackForIndexes.pop() + 1);
}
