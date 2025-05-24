// Sources/Compat/HTMX/htmx.swift
import Markup // Assuming AttributeKey is in Markup or transitively available

public extension Attr {
    struct hx {
        // Request attributes
        public static let get = AttributeKey<String>(key: "hx-get")
        public static let post = AttributeKey<String>(key: "hx-post")
        public static let put = AttributeKey<String>(key: "hx-put")
        public static let delete = AttributeKey<String>(key: "hx-delete")
        public static let patch = AttributeKey<String>(key: "hx-patch")

        // Trigger attributes
        public static let trigger = AttributeKey<String>(key: "hx-trigger")
        public static let confirm = AttributeKey<String>(key: "hx-confirm")
        public static let prompt = AttributeKey<String>(key: "hx-prompt") // Added as per plan

        // Target & Swap attributes
        public static let target = AttributeKey<String>(key: "hx-target")
        public static let swap = AttributeKey<String>(key: "hx-swap")
        public static let select = AttributeKey<String>(key: "hx-select")
        public static let selectOob = AttributeKey<String>(key: "hx-select-oob")
        public static let swapOob = AttributeKey<String>(key: "hx-swap-oob") // String for flexibility ("true", "false", or swap spec)

        // Sync & Request Modification attributes
        public static let indicator = AttributeKey<String>(key: "hx-indicator")
        public static let include = AttributeKey<String>(key: "hx-include")
        public static let params = AttributeKey<String>(key: "hx-params")
        public static let vars = AttributeKey<String>(key: "hx-vars") // Added as per plan
        public static let validate = AttributeKey<Bool>(key: "hx-validate")
        public static let encoding = AttributeKey<String>(key: "hx-encoding")
        public static let headers = AttributeKey<String>(key: "hx-headers")
        public static let request = AttributeKey<String>(key: "hx-request")


        // History attributes
        public static let pushUrl = AttributeKey<String>(key: "hx-push-url") // String for "true", "false", or URL
        public static let history = AttributeKey<Bool>(key: "hx-history") // For hx-history="false"

        // Other attributes
        public static let boost = AttributeKey<Bool>(key: "hx-boost")
        public static let preserve = AttributeKey<Bool>(key: "hx-preserve")
        public static let ext = AttributeKey<String>(key: "hx-ext")
        public static let sse = AttributeKey<String>(key: "hx-sse")
        public static let ws = AttributeKey<String>(key: "hx-ws")
        public static let on = AttributeKey<String>(key: "hx-on") // For hx-on::event
        public static let sync = AttributeKey<String>(key: "hx-sync")
        public static let disinherit = AttributeKey<String>(key: "hx-disinherit")


        // Common shorthands or aliases if any could be added here too.
        // For example, hx-delete is distinct from the HTTP DELETE method usage in hx-post, etc.
        // The above list covers many common ones based on the plan.
    }
}
