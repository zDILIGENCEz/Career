/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil && list2 == nil {
            return nil
        }
        
        var resultedList: ListNode?
        
        switch (list1, list2) {
        case (.some(let l1), .some(let l2)):
            if l1.val > l2.val {
                resultedList = ListNode(l2.val, mergeTwoLists(l1, l2.next))
            } else {
                resultedList = ListNode(l1.val, mergeTwoLists(l1.next, l2))
            }
        case (.some(let l1), nil):
            resultedList = ListNode(l1.val, mergeTwoLists(l1.next, nil))
        case (nil, .some(let l2)):
            resultedList = ListNode(l2.val, mergeTwoLists(nil, l2.next))
        case (nil, nil):
            return nil
        }
        
        return resultedList
    }
}