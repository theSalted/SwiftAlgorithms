
// Not the best solution

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        // 7, 1, 5, 3, 6, 4
        // 6 - 1 = 5
        var maxProfit = 0
        var smallestNumber = 100000000

        for p in prices {
            let profit = p - smallestNumber

            if p < smallestNumber {
                smallestNumber = p
            }

            if profit > maxProfit {
                maxProfit = profit
            }
        }

        return maxProfit
    }
}
