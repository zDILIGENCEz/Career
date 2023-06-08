class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var mask = 0
        for num in nums { 
            mask ^= num // бинарный ксор
            print(mask)
        }
        return mask
    }
}