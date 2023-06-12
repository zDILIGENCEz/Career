enum Symbols: Character {
    case I = "I"
    case V = "V"
    case X = "X"
    case L = "L"
    case C = "C"
    case D = "D"
    case M = "M"
    
    var numberRepresentation: Int {
        switch self {
        case .I: return 1
        case .V: return 5
        case .X: return 10
        case .L: return 50
        case .C: return 100
        case .D: return 500
        case .M: return 1000
        }
    }
}

class Solution {
    func romanToInt(_ s: String) -> Int {
        let arr = s.map { $0 }
        var redusedLiteral: Symbols? = nil
        return arr.reduce(0) { result, char in
            switch char {
            case Symbols.I.rawValue:
                redusedLiteral = Symbols.I
                return result + Symbols.I.numberRepresentation
            case Symbols.V.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.I {
                    return result + Symbols.V.numberRepresentation - Symbols.I.numberRepresentation * 2
                } else {
                    return result + Symbols.V.numberRepresentation
                }
            case Symbols.X.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.I {
                    return result + Symbols.X.numberRepresentation - Symbols.I.numberRepresentation * 2
                } else {
                    redusedLiteral = Symbols.X
                    return result + Symbols.X.numberRepresentation
                }
            case Symbols.L.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.X {
                    return result + Symbols.L.numberRepresentation - Symbols.X.numberRepresentation * 2
                } else {
                    return result + Symbols.L.numberRepresentation
                }
            case Symbols.C.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.X {
                    return result + Symbols.C.numberRepresentation - Symbols.X.numberRepresentation * 2
                } else {
                    redusedLiteral = Symbols.C
                    return result + Symbols.C.numberRepresentation
                }
            case Symbols.D.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.C {
                    return result + Symbols.D.numberRepresentation - Symbols.C.numberRepresentation * 2
                } else {
                    return result + Symbols.D.numberRepresentation
                }
            case Symbols.M.rawValue:
                if redusedLiteral != nil && redusedLiteral == Symbols.C {
                    return result + Symbols.M.numberRepresentation - Symbols.C.numberRepresentation * 2
                } else {
                    return result + Symbols.M.numberRepresentation
                }
            default:
                return result
            }
        }
    }
}


//class Solution {
//    var arr : [Character: Int] = ["I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000]
//    func romanToInt(_ s: String) -> Int {
//        var result  = Int()
//        var previousValue = 0
//        for char in s {
//            if let value  =  arr[char] {
//                result += value
//               if value > previousValue {
//                    result -= 2 * previousValue
//                }
//                previousValue = value
//            }
//        }
//        return result
//    }
//}
