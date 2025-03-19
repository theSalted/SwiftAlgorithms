
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        var temp = ""

        func dfs(_ openN: Int, _ closedN: Int, _ n: Int) {
            if (openN == closedN && openN == n) {
                result.append(temp)
                return
            }
            
            if (openN <  n) {
                temp += "("
                dfs(openN + 1, closedN, n)
                temp.removeLast()
            }

            if (closedN <  openN) {
                temp += ")"
                dfs(openN, closedN + 1, n)
                temp.removeLast()
            }
        }

        dfs(0, 0, n)

        return result
    }
}
