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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        // 2 -> 4 -> 3
        // 5 -> 6 -> 4
        // 7 -> 0 -> 8
        // 342 + 465 = 807
        var l1 = l1
        var l2 = l2
        var dummy: ListNode = ListNode()  
        var node: ListNode = dummy
        var carry = 0
        
        while l1 != nil || l2 != nil || carry != 0 {
            let v = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
            carry = v / 10
            let value = v % 10

            node.next = ListNode(value)

            node = node.next!

            l1 = l1?.next
            l2 = l2?.next
        }

        return dummy.next
    }
}
