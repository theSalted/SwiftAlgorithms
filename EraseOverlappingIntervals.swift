class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        
        let sorted = intervals.sorted(by: { $0[1] < $1[1]})
        var result = 0
        var lastEnd = sorted[0][1]

        for i in 1..<sorted.count {
            print(sorted[i], lastEnd)

            if sorted[i][0] < lastEnd {
                result += 1
            } else {
                lastEnd = sorted[i][1]
            }
        }

        return result
    }
}

