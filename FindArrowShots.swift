class Solution {
    func findMinArrowShots(_ points: [[Int]]) -> Int {
        var sorted = points.sorted(by: {$0[1] < $1[1]})
        var result = 1 
        var lastEnd = sorted[0][1]

        print(sorted)
        for i in 1..<sorted.count {
            if sorted[i][0] > lastEnd {
                result += 1
                lastEnd = sorted[i][1]
            }
        }

        return result
        
    }
}
