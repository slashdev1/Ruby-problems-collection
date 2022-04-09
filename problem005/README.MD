**en:**
*_Min Window Substring_*

Have the function `MinWindowSubstring(strArr)` take the array of strings stored in _strArr_, which will contain only two strings, the first parameter being the string _N_ and the second parameter being a string _K_ of some characters, and your goal is to determine the smallest substring of _N_ that contains all the characters in _K_.

For example:
if strArr is `["aaabaaddae", "aed"]` then the smallest substring of N that contains the characters a, e, and d is `"dae"` located at the end of the string. So for this example your program should return the string dae.

Another example:
if strArr is `["aabdccdbcacd", "aad"]` then the smallest substring of N that contains all of the characters in K is `"aabd"` which is located at the beginning of the string. Both parameters will be strings ranging in length from 1 to 50 characters and all of K's characters will exist somewhere in the string N. Both strings will only contains lowercase alphabetic characters.

Examples
```
Input: ["ahffaksfajeeubsne", "jefaa"]
Output: aksfaje
Input: ["aaffhkksemckelloe", "fhea"]
Output: affhkkse
```