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

        var prev = -1

        for interval in sorted {
            if interval.start < prev {
                return false 
            } else {
                prev = interval.end
            }
        }

        return true
    }
}

