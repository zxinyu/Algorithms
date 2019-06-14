=begin
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Example:

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    _add_one = 0
    _currNode_l1 = l1
    _currNode_l2 = l2
    @result = ListNode.new(0)
    _currNode_result = @result
    while (_currNode_l1 != nil) || (_currNode_l2 != nil) do
         _l1_val = _currNode_l1 == nil ? 0:_currNode_l1.val
         _l2_val = _currNode_l2 == nil ? 0:_currNode_l2.val
        _sum_val = _l1_val + _l2_val + _add_one
        _add_one = _sum_val / 10                
        _currNode_result.next = ListNode.new(_sum_val % 10)
        _currNode_result = _currNode_result.next
        
        _currNode_l1 = _currNode_l1 == nil ? _currNode_l1:_currNode_l1.next
        _currNode_l2 = _currNode_l2 == nil ? _currNode_l2:_currNode_l2.next
    end
    if _add_one > 0
        _currNode_result.next = ListNode.new(_add_one)
    end
    return @result.next        
end
