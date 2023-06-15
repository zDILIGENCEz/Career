class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return addListNode(l1, l2, reminder: 0)
    }
    
    private func addListNode(_ l1: ListNode?, _ l2: ListNode?, reminder: Int) -> ListNode? {
        if l1 == nil && l2 == nil && reminder == 0 {
            return nil
        }
        
        let value1 = l1?.val ?? 0
        let value2 = l2?.val ?? 0

        let summ = value1 + value2 + reminder
        let head = ListNode(summ%10)
        head.next = addListNode(l1?.next, l2?.next, reminder: summ/10)
        return head
    }
}