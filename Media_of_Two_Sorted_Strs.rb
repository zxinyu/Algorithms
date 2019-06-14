=begin
There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

You may assume nums1 and nums2 cannot be both empty.

Example 1:

nums1 = [1, 3]
nums2 = [2]

The median is 2.0
Example 2:

nums1 = [1, 2]
nums2 = [3, 4]

The median is (2 + 3)/2 = 2.5
=end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    _total_length = nums1.length + nums2.length
    _odd = _total_length % 2 == 0 ? true : false
    _mid_index = _total_length % 2 == 0 ? (_total_length / 2.0).ceil : (_total_length / 2.0).ceil - 1
    _mid_index = _mid_index < 0 ? 0 : _mid_index
    _nums1_index,_nums2_index,_result,_temp = 0, 0, 0, 0
    (0.._mid_index).each do |i|
        _nums1_num = _nums1_index < nums1.length ? nums1[_nums1_index] : nil
        _nums2_num = _nums2_index < nums2.length ? nums2[_nums2_index] : nil
        if _nums1_num == nil
            _temp = _nums2_num
            _nums2_index += 1
        elsif _nums2_num == nil
            _temp = _nums1_num
            _nums1_index += 1
        elsif _nums1_num <= _nums2_num
            _temp = _nums1_num
            _nums1_index += 1
        else
            _temp = _nums2_num
            _nums2_index += 1
        end
        _result = i == _mid_index - 1 ? _temp : _result
    end
    _result = _odd == true ? (_result + _temp)/2.0 : _temp
    return _result.to_f    
end
