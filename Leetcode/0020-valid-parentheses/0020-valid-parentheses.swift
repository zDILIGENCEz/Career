class Solution {
    func isValid(_ s: String) -> Bool {
        var controllStack = Stack<Character>()
        s.forEach { character in
            switch character {
            case "(", "[", "{":
                controllStack.push(character)
            case ")":
                controllStack.peek() == "(" ? controllStack.pop() : controllStack.push(character)
            case "]":
                controllStack.peek() == "[" ? controllStack.pop() : controllStack.push(character)
            case "}":
                controllStack.peek() == "{" ? controllStack.pop() : controllStack.push(character)
            default:
                return
            }
        }
        return controllStack.isEmpty
    }
}

public struct Stack<Element> {
    private var storage: [Element] = []
    public init() { }
}

extension Stack {
    
    public var isEmpty: Bool {
        return peek() == nil
    }
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    public mutating func pop() {
        storage.popLast()
    }
    
    public func peek() -> Element? {
        return storage.last
    }
    
}