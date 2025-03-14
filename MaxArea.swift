
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var i = 0
        var j = height.count - 1
        var result = 0

        while i < j {
            let min = min(height[i], height[j])
            result = max(result, min * (j - i))

            if height[i] < height[j] {
                i += 1
            } else {
                j -= 1
            }
        }

        return result
    }
}
