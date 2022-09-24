/**

Write a function that reverses a string. The input string is given as an array of characters s.
You must do this by modifying the input array in-place with O(1) extra memory.

 *Example 1:
Input: s = ["h","e","l","l","o"]
Output: ["o","l","l","e","h"]


 *Example 2:
Input: s = ["H","a","n","n","a","h"]
Output: ["h","a","n","n","a","H"]
 */

class ReverseString {
  void reverseString(List<String> s) {
    for (var i = 0; i < s.length / 2; i++) {
      int head = i;
      int tail = s.length - 1 - i;

      String headItem = s[head];
      s[head] = s[tail];
      s[tail] = headItem;
    }
  }
}
