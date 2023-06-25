class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var dic = [Int: Int]()
        
        // making the dictionary
        for num in nums1 {
            if let temp = dic[num] {
                dic[num] = temp + 1
            } else {
                dic[num] = 1
            }
        }
        
        for num in nums2 {
            if let temp = dic[num] {
                result.append(num)
                if temp == 1 {
                    dic[num] = nil
                } else {
                    dic[num] = temp - 1
                }
            }
        }
        
        return result
    }
}