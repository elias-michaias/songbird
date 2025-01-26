// MARK: - KeyValueAssignable Protocol
public protocol KeyValueAssignable {
    associatedtype Value: CustomStringConvertible
    var key: String { get set }
    var value: Value? { get set }

    init(key: String, value: Value?)
}

// MARK: - Custom Operator for Attribute Assignment
infix operator => : AssignmentPrecedence
public func => <T: KeyValueAssignable>(lhs: T, rhs: T.Value) -> T {
    return T(key: lhs.key, value: rhs)
}
