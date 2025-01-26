// MARK: - HTML Attribute Type
public struct HtmlAttr: KeyValueAssignable, Sendable, Equatable {
    public var key: String
    public var val: String?

    public init(key: String, val: String? = nil) {
        self.key = key
        self.val = val
    }

    public static func attr(key: String) -> HtmlAttr {
        return HtmlAttr(key: key)
    }

    public static func data(key: String) -> HtmlAttr {
        return HtmlAttr(key: "data-\(key)")
    }

    public static func == (lhs: HtmlAttr, rhs: HtmlAttr) -> Bool {
        return lhs.key == rhs.key && lhs.val == rhs.val
    }
}

// MARK: - ViewContent Enum
public enum ViewContent : Equatable, Sendable {
    case text(String)
    case element(ViewElement)

    public static func == (lhs: ViewContent, rhs: ViewContent) -> Bool {
        switch (lhs, rhs) {
        case (.text(let leftText), .text(let rightText)):
            return leftText == rightText
        case (.element(let leftElement), .element(let rightElement)):
            return leftElement == rightElement
        default:
            return false
        }
    }
}

// MARK: - ViewElement
public struct ViewElement : Equatable, Sendable {
    public let tag: String
    public let reactive: Bool
    public let attributes: [HtmlAttr]
    public let children: [ViewContent]

    public init(
        tag: String,
        reactive: Bool,
        attributes: [HtmlAttr] = [],
        children: [ViewContent] = []
    ) {
        self.tag = tag
        self.reactive = reactive
        self.attributes = attributes
        self.children = children
    }

    public static func == (lhs: ViewElement, rhs: ViewElement) -> Bool {
        return lhs.tag == rhs.tag &&
            lhs.reactive == rhs.reactive &&
            lhs.attributes == rhs.attributes &&
            lhs.children == rhs.children
    }
}

// MARK: - ViewBuilder
@resultBuilder
public struct ViewBuilder {
    public static func buildBlock(_ children: ViewContent...) -> [ViewContent] {
        return children
    }

    public static func buildBlock() -> [ViewContent] {
        return []
    }

    public static func buildExpression(_ content: CustomStringConvertible) -> ViewContent {
        .text(content.description)
    }

    public static func buildExpression(_ element: ViewElement) -> ViewContent {
        .element(element)
    }

    public static func buildExpression(_ content: ViewContent) -> ViewContent {
        return content
    }
}
