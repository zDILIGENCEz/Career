class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        for step in 0..<k {
            guard nums.count > 1 else {
                return
            }
            nums = Array(nums[nums.count - 1...nums.count - 1] + nums[0...nums.count - 2])
        }
    }
}