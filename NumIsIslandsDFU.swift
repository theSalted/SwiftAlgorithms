
class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        var grid = grid
        var numberOfIslands = 0

        for row in 0..<grid.count {
            for col in 0..<grid[0].count {
                if grid[row][col] == "1" {
                    dfs(row, col, &grid)
                    numberOfIslands += 1
                }
            }
        }

        return numberOfIslands
    }

    func dfs(_ row: Int, _ col: Int, _ grid: inout [[Character]]) {
        if row < 0 || row >= grid.count || col < 0 || col >= grid[0].count { return }
        if grid[row][col] != "1" { return }
        grid[row][col] = "0"

        dfs(row - 1, col, &grid)
        dfs(row + 1, col, &grid)
        dfs(row, col - 1, &grid)
        dfs(row, col + 1, &grid)
    }
}

