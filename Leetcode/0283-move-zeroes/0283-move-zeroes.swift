class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        let countZero = nums.filter({$0 == 0}).count
        nums.removeAll(where: {$0 == 0})
        nums.append(contentsOf: repeatElement(0, count: countZero)) 
    }
}