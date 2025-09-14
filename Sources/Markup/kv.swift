// Sources/Markup/kv.swift

import Foundation

// Custom Operator for Attribute Assignment
infix operator => : AssignmentPrecedence

/// Creates an `AnyAttribute` from an `AttributeKey` and a value of the key's specified type.
///
/// This operator allows a clean, declarative syntax for assigning values to HTML attributes.
/// For example: `Attr.id => "myElement"`
///
/// The type `T` of the `AttributeKey` determines the expected type of the `rhs` value.
/// If `T` is an optional type (e.g., `String?`), then `rhs` can be `nil`.
/// If `T` is a non-optional type (e.g., `String`), then `rhs` cannot be `nil`.
///
/// The underlying `TypedAttribute<T>` stores `value: T?`, so it can always represent
/// the absence of a value if `T` itself is an optional type and `nil` is passed.
/// For boolean attributes (`AttributeKey<Bool>`), the `TypedAttribute`'s rendering logic
/// handles `true` (attribute presence) and `false` (attribute absence) correctly.
///
/// - Parameters:
///   - lhs: The `AttributeKey` defining the attribute's name and expected value type.
///   - rhs: The value to assign to the attribute. This must match the type `T` of the `AttributeKey`.
/// - Returns: An `AnyAttribute` instance, which type-erases the underlying `TypedAttribute`.
public func => <T>(lhs: AttributeKey<T>, rhs: T) -> AnyAttribute {
    return TypedAttribute(key: lhs.key, value: rhs).eraseToAnyAttribute()
}
