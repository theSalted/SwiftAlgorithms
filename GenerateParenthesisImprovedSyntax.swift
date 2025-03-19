
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        var temp = ""

        func dfs(_ numOfOpen: Int, _ numOfClosed: Int) {
            if (numOfOpen == n && numOfClosed == n) {
                result.append(temp)
                return
            }

            if (numOfOpen < n) {
                temp += "("
                dfs(numOfOpen + 1, numOfClosed)
                temp.removeLast()
            }

            if (numOfClosed < numOfOpen) {
                temp += ")"
                dfs(numOfOpen, numOfClosed + 1)
                temp.removeLast()
            }
        }

        dfs(0, 0)

        return result
    }
}
