List<String> getBalancedSubstrings(String S) {
  List<String> result = [];

  // Helper function to check if a substring is balanced
  bool isBalanced(String substring) {
    if (substring.length < 2) return false;

    Set<String> uniqueChars = Set.from(substring.split(''));
    if (uniqueChars.length != 2) return false;

    int count1 = substring.split(uniqueChars.elementAt(0)).length - 1;
    int count2 = substring.split(uniqueChars.elementAt(1)).length - 1;

    return count1 == count2;
  }

  // Iterate through all possible substrings
  for (int i = 0; i < S.length; i++) {
    for (int j = i + 1; j <= S.length; j++) {
      String substring = S.substring(i, j);
      if (isBalanced(substring)) {
        if (result.isEmpty || substring.length > result[0].length) {
          result = [substring];
        } else if (substring.length == result[0].length) {
          result.add(substring);
        }
      }
    }
  }

  return result;
}

void main() {
  print(getBalancedSubstrings("cabbacc")); // Output: ["abba"]
  print(getBalancedSubstrings("abababa")); // Output: ["ababab", "bababa"]
  print(getBalancedSubstrings("aaaaaaa")); // Output: []
}
