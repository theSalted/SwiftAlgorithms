class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        matrix.reverse()

        for i in 0..<matrix.count {
            for j in 0..<i {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
    }
}
