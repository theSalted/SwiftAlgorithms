
class Solution {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        var queue = [root]
        var result = [Int]()
        
        while !queue.isEmpty {
            let size = queue.count
            
            for i in 0..<size {
                let node = queue.removeFirst() 
                
                if i == size - 1 {
                    result.append(node.val)
                }
                
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
        }
        
        return result
    }
}
