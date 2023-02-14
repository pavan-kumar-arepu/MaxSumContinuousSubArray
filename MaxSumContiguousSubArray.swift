//
//  MaxSumContiguousSubArray.swift
//  FirstMissingNumbwer
//
//  Created by Pavankumar Arepu on 14/02/23.
//

import Foundation


class Solution {
    func maxSubArray(_ A: [Int]) -> Int {
        // Keep max negative sum
        var maxSumSubArray = -10000000
        var sum = 0
        var n = A.count
        //Iterate n times
        for i in 0..<n {
            // keep adding sum
            sum = sum + A[i]
            // If sum is less then 0 and if sum > maxSumSubArray
            // then maxSumSubArray will be what ever got the sum(untill that point)
            if sum < 0 {
                if sum > maxSumSubArray {
                    maxSumSubArray = sum
                }
                sum = 0
            } else {
                if sum > maxSumSubArray {
                    maxSumSubArray = sum
                }
            }
        }
        return maxSumSubArray
    }
}
