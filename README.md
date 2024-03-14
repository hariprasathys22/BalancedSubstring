# question:
- A string is balanced if it consists of exactly two different characters and both of those
characters appear exactly the same number of times. For example: "aabbab" is
balanced (both 'a' and 'b' occur three times) but "aabba" is not balanced ('a' occurs three
times, 'b' occurs two times). String "aabbcc" is also not balanced (it contains three
different letters).A substring of string S is a string that consists of consecutive letters in
S. For example: "ompu" is a substring of "computer" but "cmptr" is not.Write a function
solution called getBalancedSubstrings(List<String> S) that, given a string S, returns an
array of the longest balanced substring of S.Examples:
1. Given S = "cabbacc", the function should return ["abba"] because it is the longest
balanced substring.
2. Given S = "abababa", the function should return ["ababab", "bababa"] which are the
longest balanced substrings.
3. Given S = "aaaaaaa", the function should return [] since S does not contain a
balanced substring.Write an efficient algorithm for the following assumptions:
- N is an integer within the range [1..100,000];
- string S is made only of lowercase letters (a−z)
using dart

Used helper function to check if a substring is balanced
Iterated through all possible substring

