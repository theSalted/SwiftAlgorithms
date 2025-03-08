class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let combinedNums = (nums1 + nums2).sorted()
        if combinedNums.count % 2 == 1 {
            return Double(combinedNums[(combinedNums.count / 2)])
        } else {
            let halfPoint = combinedNums.count / 2
            return (Double(combinedNums[halfPoint]) + Double(combinedNums[halfPoint - 1])) / 2
        }
    }
}
