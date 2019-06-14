=begin
Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3. 
             Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
=end

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    _max_len = 0
    _str_hash = Hash.new
    _temp_ind = 0
     s.split(//).each_with_index do |item, index|
         if _str_hash.has_key?(item) 
             _temp_ind = [_str_hash[item] + 1, _temp_ind].max
         end
        _max_len = [index - _temp_ind + 1, _max_len].max
        _str_hash[item] = index
     end
    return _max_len
end
