=begin
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:

Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    $result = Array.new
    nums.each do |i|
        _secret = target - i
        _index = nums.index(i)
        _sub_nums = nums[_index+1, nums.length]
        if _sub_nums.include? _secret
            $result.push(_index)
            $result.push(_sub_nums.index(_secret)+_index+1)
            break
        end
    end
    return $result    
end
