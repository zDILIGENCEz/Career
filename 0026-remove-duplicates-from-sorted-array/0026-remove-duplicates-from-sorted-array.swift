class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        let numSet = Set(nums.map {$0})
        nums =  Array(numSet).sorted()
        for i in 0..<(nums.count - numSet.count) {
            nums.append(0)
        }
        return numSet.count
    }
}