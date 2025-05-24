import Markup

// MARK: - Attr Extensions for Alpine.js
public extension Attr {
    struct x {
        public static let data = AttributeKey<String>(key: "x-data")
        public static let `init` = AttributeKey<String>(key: "x-init")
        public static let bind = AttributeKey<String>(key: "x-bind")
        public static let text = AttributeKey<String>(key: "x-text")
        public static let show = AttributeKey<String>(key: "x-show")

        // For the main x-transition attribute (often boolean or with simple modifiers like 'opacity')
        public static let transition = AttributeKey<String>(key: "x-transition")

        // Specific phase attributes for transitions
        public static let transitionEnter      = AttributeKey<String>(key: "x-transition:enter")
        public static let transitionEnterStart = AttributeKey<String>(key: "x-transition:enter-start")
        public static let transitionEnterEnd   = AttributeKey<String>(key: "x-transition:enter-end")
        public static let transitionLeave      = AttributeKey<String>(key: "x-transition:leave")
        public static let transitionLeaveStart = AttributeKey<String>(key: "x-transition:leave-start")
        public static let transitionLeaveEnd   = AttributeKey<String>(key: "x-transition:leave-end")

        public struct on {
            public static let click = AttributeKey<String>(key: "x-on:click")
        }
    }
}

// XTransitionConfig and its helper methods are fully removed.

