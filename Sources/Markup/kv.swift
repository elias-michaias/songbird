// MARK: - KeyValueAssignable Protocol
public protocol KeyValueAssignable {
    associatedtype Value: CustomStringConvertible
    var key: String { get set }
    var val: Value? { get set }

    init(key: String, val: Value?)
}

// MARK: - Custom Operator for Attribute Assignment
infix operator => : AssignmentPrecedence
public func => <T: KeyValueAssignable>(lhs: T, rhs: T.Value) -> T {
    return T(key: lhs.key, val: rhs)
}
