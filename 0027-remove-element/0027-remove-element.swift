class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let initCount = nums.count
        nums = nums.filter({$0 != val})
        let reducedAmmount = nums.count
        
        for _ in 0..<initCount - reducedAmmount {
            nums.append(0)
        }
        
        return reducedAmmount
    }
}
