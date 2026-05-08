/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        let sorted = intervals.sorted(by: {$0.start < $1.start})

        for i in 1..<sorted.count {
            if sorted[i - 1].end > sorted[i].start {
                return false
            }
        }
        return true
    }
}

