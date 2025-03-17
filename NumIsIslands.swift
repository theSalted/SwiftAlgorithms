
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var result = 0

        func dfs(_ row: Int, _ col: Int) {
            if row < 0 || col < 0 || row >= grid.count || col >= grid[0].count {
                return
            }

            if grid[row][col] != "1" { return }
            grid[row][col] = "0"

            dfs(row - 1, col)
            dfs(row + 1, col)
            dfs(row, col - 1)
            dfs(row, col + 1)
        }

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1" {
                    dfs(row, col)
                    result += 1
                }
             }
        }

        return result        
    }
}
