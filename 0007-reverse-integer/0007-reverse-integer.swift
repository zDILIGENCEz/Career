import Foundation

class Solution {
    func reverse(_ x: Int) -> Int {
        var i = 0
        let final = x.digits.reduce(into: 0) { result, number in
            result += number * Int(pow(Double(10),Double(i)))
            i += 1
        }
        
        guard final < Int(pow(Double(2),Double(31))) - 1 && final > Int(pow(Double(-2),Double(31))) else {
            return 0
        }

        return x > 0 ? final : -final
    }
}

extension BinaryInteger {
    var digits: [Int] {
        get {
            return String(describing: self).compactMap { Int(String($0)) }
        }
    }
}