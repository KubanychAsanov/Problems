/*
125. Valid Palindrome

A phrase is a palindrome if, after converting all uppercase letters 
into lowercase letters and removing all non-alphanumeric characters, 
it reads the same forward and backward. Alphanumeric characters include letters and numbers.

Given a string s, return true if it is a palindrome, or false otherwise.

 

Example 1:

Input: s = "A man, a plan, a canal: Panama"
Output: true
Explanation: "amanaplanacanalpanama" is a palindrome.


Example 2:

Input: s = "race a car"
Output: false
Explanation: "raceacar" is not a palindrome.
*/ 


class IsPalindrome {
  bool isPalindrome(String s) {
    String newS = s.replaceAll(RegExp('[^a-zA-Z0-9]'), '').toLowerCase();

    for (var i = 0; i < newS.length / 2; i++) {
      if (newS[i] != newS[newS.length - 1 - i]) {
        return false;
      }
    }

    return true;
  }
}
