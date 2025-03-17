
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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        guard left != right else { return head }
        var pre: ListNode?
        var start: ListNode!
        var end: ListNode!
        var post: ListNode?

        var current = head

        for index in 1..<right{
            if index == left-1 {
                pre = current
            } 
            if index == left {
                start = current
            }
            current = current?.next
        } 

        end = current
        post = current?.next

        current = start 
        var next = current?.next

        for _ in left..<right {
            let nextNext = next?.next
            next?.next = current
            current = next
            next = nextNext
        }
        pre?.next = end
        start.next = post

        return left == 1 ? end : head
    }
}
