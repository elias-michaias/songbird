import Markup

// MARK: - HtmlAttr Extensions for Alpine.js
public extension HtmlAttr {
    struct x {
        public static let data = HtmlAttr(key: "x-data")
        public static let `init` = HtmlAttr(key: "x-init")
        public static let bind = HtmlAttr(key: "x-bind")
        public static let text = HtmlAttr(key: "x-text")
        public static let show = HtmlAttr(key: "x-show")

        public static func transition(_ configs: XTransitionConfig...) -> HtmlAttr {
            var base = HtmlAttr(key: "x-transition")
            let modifiers = configs.compactMap { config -> String? in
                guard let value = config.value else { return nil }
                return config.key.replacingOccurrences(of: "{}", with: value)
            }
            if !modifiers.isEmpty {
                base.key += modifiers.joined()
            }
            return base
        }

        public struct on {
            public static let click = HtmlAttr(key: "x-on:click")
        }
    }
}

// MARK: - XTransitionConfig
public struct XTransitionConfig: KeyValueAssignable {
    public var key: String
    public var value: String?

    public init(key: String, value: String? = nil) {
        self.key = key
        self.value = value
    }

    // MARK: - XTransitionConfig Helper Methods
    public static func duration(_ duration: Int? = nil) -> XTransitionConfig {
        return XTransitionConfig(key: ".duration.{}ms", value: duration != nil ? "\(duration!)" : nil)
    }

    public static func delay(_ delay: Int? = nil) -> XTransitionConfig {
        return XTransitionConfig(key: ".delay.{}ms", value: delay != nil ? "\(delay!)" : nil)
    }

    public static func custom(key: String, value: String) -> XTransitionConfig {
        return XTransitionConfig(key: key, value: value)
    }
}

