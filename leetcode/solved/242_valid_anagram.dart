/*
Given two strings s and t, return true if t is an anagram of s, and false otherwise.
An Anagram is a word or phrase formed by rearranging the letters of a different word
or phrase, typically using all the original letters exactly once.


Example 1:
Input: s = "anagram", t = "nagaram"
Output: true


Example 2:
Input: s = "rat", t = "car"
Output: false
*/

class ValidAnagram {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }

    Map map = Map();
    bool ans = true;

    for (var i = 0; i < s.length; i++) {
      if (map[s[i]] == null) {
        map[s[i]] = 1;
      } else {
        map[s[i]]++;
      }
    }

    for (var i = 0; i < t.length; i++) {
      if (map[t[i]] == null) {
        return false;
      } else {
        map[t[i]]--;
      }
    }

    map.forEach((key, value) {
      if (value != 0) {
        ans = false;
      }
    });

    return ans;
  }
}
