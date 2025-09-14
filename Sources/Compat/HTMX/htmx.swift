// Sources/Compat/HTMX/htmx.swift
import Markup // For AttributeKey

public struct HxAttributes: Sendable { // Added : Sendable
    // Request attributes
    public let get = AttributeKey<String>(key: "hx-get")
    public let post = AttributeKey<String>(key: "hx-post")
    public let put = AttributeKey<String>(key: "hx-put")
    public let delete = AttributeKey<String>(key: "hx-delete")
    public let patch = AttributeKey<String>(key: "hx-patch")

    // Trigger attributes
    public let trigger = AttributeKey<String>(key: "hx-trigger")
    public let confirm = AttributeKey<String>(key: "hx-confirm")
    public let prompt = AttributeKey<String>(key: "hx-prompt")

    // Target & Swap attributes
    public let target = AttributeKey<String>(key: "hx-target")
    public let swap = AttributeKey<String>(key: "hx-swap")
    public let select = AttributeKey<String>(key: "hx-select")
    public let selectOob = AttributeKey<String>(key: "hx-select-oob")
    public let swapOob = AttributeKey<String>(key: "hx-swap-oob") // String for flexibility

    // Sync & Request Modification attributes
    public let indicator = AttributeKey<String>(key: "hx-indicator")
    public let include = AttributeKey<String>(key: "hx-include")
    public let params = AttributeKey<String>(key: "hx-params")
    public let vars = AttributeKey<String>(key: "hx-vars")
    public let validate = AttributeKey<Bool>(key: "hx-validate")
    public let encoding = AttributeKey<String>(key: "hx-encoding")
    public let headers = AttributeKey<String>(key: "hx-headers")
    public let request = AttributeKey<String>(key: "hx-request")

    // History attributes
    public let pushUrl = AttributeKey<String>(key: "hx-push-url") // String for "true", "false", or URL
    public let history = AttributeKey<Bool>(key: "hx-history") // For hx-history="false"

    // Other attributes
    public let boost = AttributeKey<Bool>(key: "hx-boost")
    public let preserve = AttributeKey<Bool>(key: "hx-preserve")
    public let ext = AttributeKey<String>(key: "hx-ext")
    public let sse = AttributeKey<String>(key: "hx-sse")
    public let ws = AttributeKey<String>(key: "hx-ws")
    public let on = AttributeKey<String>(key: "hx-on") // For hx-on::event
    public let sync = AttributeKey<String>(key: "hx-sync")
    public let disinherit = AttributeKey<String>(key: "hx-disinherit")
}

/// Accessor for HTMX 'hx-' attributes (e.g., hx.get, hx.trigger).
public let hx = HxAttributes()
