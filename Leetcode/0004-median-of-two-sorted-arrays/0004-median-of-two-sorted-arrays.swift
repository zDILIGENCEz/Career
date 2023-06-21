class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var resultedArr = [Int]()
        var i = 0
        var j = 0
        
        while i < nums1.count || j < nums2.count {
            if i == nums1.count {
                resultedArr.append(nums2[j])
                j += 1
            } else if j == nums2.count {
                resultedArr.append(nums1[i])
                i += 1
            } else if nums1[i] > nums2[j] {
                resultedArr.append(nums2[j])
                j += 1
            } else {
                resultedArr.append(nums1[i])
                i += 1
            }
        }
        print(resultedArr)
        if resultedArr.count % 2 == 0 {
            return (Double(resultedArr[resultedArr.count / 2]) + Double(resultedArr[resultedArr.count / 2 - 1])) / 2
        } else {
            return Double(resultedArr[resultedArr.count / 2])
        }
    }
}