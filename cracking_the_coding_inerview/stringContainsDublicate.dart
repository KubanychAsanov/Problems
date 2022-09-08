class NotContainsDuplicate {
  bool notContainsDublicate(String s) {
    Map map = Map();

    for (var i = 0; i < s.length; i++) {
      if (map[s[i]] != null) {
        return false;
      }

      map[s[i]] = true;
    }

    return true;
  }
}
