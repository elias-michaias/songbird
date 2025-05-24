// Sources/Markup/AnyAttribute.swift

import Foundation // Or any other necessary imports

// Type-erased wrapper for any TypedAttribute
public struct AnyAttribute {
    private let erased: AttributeErased

    public var key: String {
        return erased.key
    }

    public init<T>(_ attribute: TypedAttribute<T>) {
        self.erased = attribute
    }

    // This allows AnyAttribute itself to conform to AttributeErased if needed,
    // or provide access to the underlying erased properties/methods.
    public func stringValue() -> String? {
        return erased.stringValue()
    }

    public var isBooleanTrue: Bool {
        return erased.isBooleanTrue
    }
    
    // Forwarding typeIdentifier for Equatable comparison
    public var typeIdentifier: ObjectIdentifier {
        return erased.typeIdentifier
    }
}

// Convenience extension for erasing
extension TypedAttribute {
    public func eraseToAnyAttribute() -> AnyAttribute {
        return AnyAttribute(self)
    }
}

// MARK: - Equatable Conformance for AnyAttribute
extension AnyAttribute: Equatable {
    public static func == (lhs: AnyAttribute, rhs: AnyAttribute) -> Bool {
        // Check if the dynamic types of the wrapped 'erased' values are the same
        // using the typeIdentifier exposed by AttributeErased.
        if lhs.erased.typeIdentifier == rhs.erased.typeIdentifier {
            // If types match, delegate to the isEqual method of the wrapped instance.
            return lhs.erased.isEqual(to: rhs.erased)
        }
        // If type identifiers do not match, they cannot be equal.
        return false
    }
}
