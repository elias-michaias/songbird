// Sources/Markup/TypedAttribute.swift

import Foundation // Or any other necessary imports

// Protocol for common behavior of typed attributes (key and string rendering)
public protocol AttributeErased {
    var key: String { get }
    func stringValue() -> String?
    var isBooleanTrue: Bool { get }
    // Add for Equatable conformance
    func isEqual(to other: AttributeErased) -> Bool
    var typeIdentifier: ObjectIdentifier { get } // To quickly check if types could match
    var underlyingValueAsString: String? { get } // For cases where T is not Equatable but can be string-compared
}

// Generic struct to hold a strongly-typed attribute
public struct TypedAttribute<T>: AttributeErased {
    public let key: String
    public let value: T? // Value is optional to allow for attributes like 'disabled' with no explicit value

    public init(key: String, value: T?) {
        self.key = key
        self.value = value
    }

    public func stringValue() -> String? {
        // If T is Bool, stringValue should be nil.
        // Rendering of boolean attributes is handled by isBooleanTrue (for true values)
        // or omitted entirely (for false values or nil boolean values).
        if T.self == Bool.self {
            return nil // Booleans are handled by isBooleanTrue or omitted
        }

        if let val = value {
            return String(describing: val)
        }
        
        // For non-boolean types, if value is nil, it means attribute shouldn't be rendered.
        return nil
    }

    public var isBooleanTrue: Bool {
        // isBooleanTrue is only true if T is Bool and the value is explicitly true.
        if T.self == Bool.self, let val = value as? Bool {
            return val
        }
        return false // All other cases, including nil Bool or non-Bool types.
    }

    // MARK: - Equatable Support for AttributeErased
    public var typeIdentifier: ObjectIdentifier {
        return ObjectIdentifier(T.self)
    }

    public var underlyingValueAsString: String? {
       if let val = value {
           return String(describing: val)
       }
       return nil
    }

    public func isEqual(to other: AttributeErased) -> Bool {
        guard key == other.key && typeIdentifier == other.typeIdentifier else {
            return false
        }

        // Attempt to cast 'other' to Self (i.e., TypedAttribute<T>)
        if let otherTypedAttribute = other as? TypedAttribute<T> {
            // Compare 'self.value' with 'otherTypedAttribute.value'
            // This handles common Equatable types directly.
            if let v1 = self.value as? String, let v2 = otherTypedAttribute.value as? String { return v1 == v2 }
            else if let v1 = self.value as? Int, let v2 = otherTypedAttribute.value as? Int { return v1 == v2 }
            else if let v1 = self.value as? Bool, let v2 = otherTypedAttribute.value as? Bool { return v1 == v2 }
            else if let v1 = self.value as? Double, let v2 = otherTypedAttribute.value as? Double { return v1 == v2 }
            // If both values are nil, they are considered equal in this context.
            else if self.value == nil && otherTypedAttribute.value == nil { return true }
            // Fallback for other Equatable types not explicitly listed:
            // This relies on T being Equatable. If T is not Equatable, this will not work
            // and the comparison will effectively be false unless both are nil or one of the above.
            // A proper solution would be TypedAttribute<T: Equatable>, but that's a larger change.
            // For now, if it's not one of the above and not both nil, we might consider them not equal
            // or rely on string comparison if that's acceptable (but it's less safe).
            // The current structure will return false if not explicitly handled or both nil.
            else {
                // This is a tricky spot. If T is Equatable but not one of the above,
                // we can't directly compare `self.value == otherTypedAttribute.value`
                // without a constraint T: Equatable on the struct `TypedAttribute`.
                // For now, if types match and values are not nil and not one of the above,
                // we'll say they are not equal through this specific path.
                // A more advanced implementation might use `(self.value as? any Equatable)?.isEqual(otherTypedAttribute.value as? any Equatable)`
                // but that has its own complexities.
                // For simplicity, this implementation assumes attribute values will primarily be the common types.
                return false
            }
        }
        return false // Could not cast 'other' to TypedAttribute<T>
    }
}
