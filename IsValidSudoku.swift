
class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var col = [Int : Set<Character>]()
        var row = [Int : Set<Character>]()
        var b = [Point : Set<Character>]()

        for i in 0..<board.count {
            if col[i] == nil {
                col[i] = Set<Character>()
            }

            for j in 0..<board.count {
                if row[j] == nil {
                    row[j] = Set<Character>()
                }
                let point = Point(i/3, j/3)
                if b[point] == nil {
                    b[point] = Set<Character>()
                }

                let char = board[i][j]
                if char == "." {
                    continue
                }

                let colTest = col[i]?.contains(char) ?? false
                let rowTest = row[j]?.contains(char) ?? false
                let boardTest = b[point]?.contains(char) ?? false
                
                
                if (colTest || rowTest || boardTest) {
                    return false
                }
                col[i]?.insert(char)
                row[j]?.insert(char)
                b[point]?.insert(char)
            }
        }

        return true
    }
}

struct Point: Hashable {
    var x: Int
    var y: Int

    init(_ x: Int, _ y: Int) {
        self.x = x
        self.y = y
    }
}
