
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var res = [[Int]]()
        var cur = [Int]()
        
        func dfs(_ i: Int, _ total: Int) {
            if total == target {
                res.append(cur)
                return
            }

            if i >= candidates.count || total > target {
                return
            }

            cur.append(candidates[i])
            dfs(i, total + candidates[i])
            cur.removeLast()
            dfs(i + 1, total)
        }

        dfs(0, 0)

        return res
    }
}
