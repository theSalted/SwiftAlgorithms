class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var col = [Int : Set<Character>]()
        var row = [Int : Set<Character>]()
        var block = [String : Set<Character>]()

        for r in 0..<board.count {
            for c in 0..<board[0].count {
                if board[r][c] == "." { continue }
                let value = board[r][c]
                let blockKey = "\(c/3)-\(r/3)"

                if col[c]?.contains(value) == true ||
                    row[r]?.contains(value) == true ||
                    block[blockKey]?.contains(value) == true {
                    return false
                }

                col[c, default: []].insert(value)
                row[r, default: []].insert(value)
                block[blockKey, default: []].insert(value)
            }
        }

        return true

    }
}
