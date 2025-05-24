// Sources/Compat/Alpine/alpine.swift
import Markup // For AttributeKey

public struct XAttributes {
    public let data = AttributeKey<String>(key: "x-data")
    public let `init` = AttributeKey<String>(key: "x-init") // Ensure backticks for 'init'
    public let bind = AttributeKey<String>(key: "x-bind")
    public let text = AttributeKey<String>(key: "x-text")
    public let show = AttributeKey<String>(key: "x-show")

    // Transition attributes
    public let transition = AttributeKey<String>(key: "x-transition")
    public let transitionEnter = AttributeKey<String>(key: "x-transition:enter")
    public let transitionEnterStart = AttributeKey<String>(key: "x-transition:enter-start")
    public let transitionEnterEnd = AttributeKey<String>(key: "x-transition:enter-end")
    public let transitionLeave = AttributeKey<String>(key: "x-transition:leave")
    public let transitionLeaveStart = AttributeKey<String>(key: "x-transition:leave-start")
    public let transitionLeaveEnd = AttributeKey<String>(key: "x-transition:leave-end")

    // Nested struct for x-on events
    public struct On {
        public let click = AttributeKey<String>(key: "x-on:click")
        // Add other x-on events here if needed, e.g.:
        // public let mouseenter = AttributeKey<String>(key: "x-on:mouseenter")
    }

    /// Accessor for Alpine x-on event attributes (e.g., x.on.click).
    public let on = On()
}

/// Accessor for Alpine.js 'x-' attributes (e.g., x.data, x.show, x.on.click).
public let x = XAttributes()
