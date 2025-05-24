// Sources/Markup/attr.swift

import Foundation

public struct AttributeKey<T: Sendable>: Sendable { // Added : Sendable conformance
    public let key: String
    public init(key: String) {
        self.key = key
    }
}

public enum Attr {
    // Global Attributes
    public static let accesskey = AttributeKey<String>(key: "accesskey")
    public static let autocapitalize = AttributeKey<String>(key: "autocapitalize") // "none", "sentences", "words", "characters"
    public static let `class` = AttributeKey<String>(key: "class")
    public static let contenteditable = AttributeKey<String>(key: "contenteditable") // "true", "false", "" - can also be inherited
    public static let dir = AttributeKey<String>(key: "dir") // "ltr", "rtl", "auto"
    public static let draggable = AttributeKey<Bool>(key: "draggable") // "true", "false" (HTML spec) -> Bool maps well
    public static let enterkeyhint = AttributeKey<String>(key: "enterkeyhint")
    public static let hidden = AttributeKey<Bool>(key: "hidden") // Boolean attribute
    public static let id = AttributeKey<String>(key: "id")
    public static let inputmode = AttributeKey<String>(key: "inputmode")
    public static let `is` = AttributeKey<String>(key: "is") // For custom elements
    public static let itemid = AttributeKey<String>(key: "itemid")
    public static let itemprop = AttributeKey<String>(key: "itemprop") // Can be multiple space-separated
    public static let itemref = AttributeKey<String>(key: "itemref") // Can be multiple space-separated id's
    public static let itemscope = AttributeKey<Bool>(key: "itemscope") // Boolean attribute
    public static let itemtype = AttributeKey<String>(key: "itemtype") // URI
    public static let lang = AttributeKey<String>(key: "lang") // Language code
    public static let nonce = AttributeKey<String>(key: "nonce")
    public static let spellcheck = AttributeKey<String>(key: "spellcheck") // "true", "false", ""
    public static let style = AttributeKey<String>(key: "style") // CSS
    public static let tabindex = AttributeKey<Int>(key: "tabindex")
    public static let title = AttributeKey<String>(key: "title")
    public static let translate = AttributeKey<String>(key: "translate") // "yes", "no"

    // Specific Element Attributes
    public static let accept = AttributeKey<String>(key: "accept") // <input>, <form>
    public static let accept_charset = AttributeKey<String>(key: "accept-charset") // <form>
    public static let action = AttributeKey<String>(key: "action") // <form> - URI
    public static let align = AttributeKey<String>(key: "align") // Obsolete, but part of the spec
    public static let allow = AttributeKey<String>(key: "allow") // <iframe>
    public static let alt = AttributeKey<String>(key: "alt") // <img>, <area>, <input>
    public static let `async` = AttributeKey<Bool>(key: "async") // <script> - Boolean attribute
    public static let autocomplete = AttributeKey<String>(key: "autocomplete") // <form>, <input>, etc.
    public static let autofocus = AttributeKey<Bool>(key: "autofocus") // <button>, <input>, etc. - Boolean attribute
    public static let autoplay = AttributeKey<Bool>(key: "autoplay") // <audio>, <video> - Boolean attribute
    public static let charset = AttributeKey<String>(key: "charset") // <meta>, <script>
    public static let checked = AttributeKey<Bool>(key: "checked") // <input> - Boolean attribute
    public static let cite = AttributeKey<String>(key: "cite") // <blockquote>, <q>, <del>, etc. - URI
    public static let cols = AttributeKey<Int>(key: "cols") // <textarea>
    public static let colspan = AttributeKey<Int>(key: "colspan") // <td>, <th>
    public static let content = AttributeKey<String>(key: "content") // <meta>
    public static let controls = AttributeKey<Bool>(key: "controls") // <audio>, <video> - Boolean attribute
    public static let coords = AttributeKey<String>(key: "coords") // <area>
    public static let crossorigin = AttributeKey<String>(key: "crossorigin") // <img>, <audio>, <video>, etc.
    public static let datetime = AttributeKey<String>(key: "datetime") // <time>, <ins>, <del>
    public static let decoding = AttributeKey<String>(key: "decoding") // <img> - "sync", "async", "auto"
    public static let defaultAttr = AttributeKey<Bool>(key: "default") // <track> - Renamed from `default` - Boolean attribute
    public static let `defer` = AttributeKey<Bool>(key: "defer") // <script> - Boolean attribute
    public static let disabled = AttributeKey<Bool>(key: "disabled") // <button>, <input>, etc. - Boolean attribute
    public static let download = AttributeKey<String>(key: "download") // <a>, <area> - Can be empty string or filename
    public static let enctype = AttributeKey<String>(key: "enctype") // <form>
    public static let `for` = AttributeKey<String>(key: "for") // <label>, <output>
    public static let form = AttributeKey<String>(key: "form") // <button>, <input>, etc. - ID of form
    public static let formaction = AttributeKey<String>(key: "formaction") // <button>, <input> - URI
    public static let formenctype = AttributeKey<String>(key: "formenctype") // <button>, <input>
    public static let formmethod = AttributeKey<String>(key: "formmethod") // <button>, <input>
    public static let formnovalidate = AttributeKey<Bool>(key: "formnovalidate") // <button>, <input> - Boolean attribute
    public static let formtarget = AttributeKey<String>(key: "formtarget") // <button>, <input>
    public static let headers = AttributeKey<String>(key: "headers") // <td>, <th> - space-separated list of IDs
    public static let height = AttributeKey<Int>(key: "height") // <img>, <video>, etc.
    public static let high = AttributeKey<Double>(key: "high") // <meter>
    public static let href = AttributeKey<String>(key: "href") // <a>, <link>, etc. - URI
    public static let hreflang = AttributeKey<String>(key: "hreflang") // <a>, <link> - Language code
    public static let inert = AttributeKey<Bool>(key: "inert") // Global attribute, not just link/script - Boolean attribute
    public static let integrity = AttributeKey<String>(key: "integrity") // <link>, <script>
    public static let kind = AttributeKey<String>(key: "kind") // <track>
    public static let label = AttributeKey<String>(key: "label") // <track>, <option>, etc.
    public static let list = AttributeKey<String>(key: "list") // <input> - ID of datalist
    public static let loop = AttributeKey<Bool>(key: "loop") // <audio>, <video> - Boolean attribute
    public static let low = AttributeKey<Double>(key: "low") // <meter>
    public static let max = AttributeKey<Double>(key: "max") // <input>, <meter>, <progress>
    public static let maxlength = AttributeKey<Int>(key: "maxlength") // <input>, <textarea>
    public static let min = AttributeKey<Double>(key: "min") // <input>, <meter>
    public static let minlength = AttributeKey<Int>(key: "minlength") // <input>, <textarea>
    public static let multiple = AttributeKey<Bool>(key: "multiple") // <input>, <select> - Boolean attribute
    public static let muted = AttributeKey<Bool>(key: "muted") // <audio>, <video> - Boolean attribute
    public static let name = AttributeKey<String>(key: "name") // <input>, <form>, etc.
    public static let novalidate = AttributeKey<Bool>(key: "novalidate") // <form> - Boolean attribute
    public static let `open` = AttributeKey<Bool>(key: "open") // <details>, <dialog> - Boolean attribute
    public static let optimum = AttributeKey<Double>(key: "optimum") // <meter>
    public static let part = AttributeKey<String>(key: "part") // Global attribute - space-separated list
    public static let pattern = AttributeKey<String>(key: "pattern") // <input> - Regex
    public static let ping = AttributeKey<String>(key: "ping") // <a>, <area> - space-separated list of URIs
    public static let placeholder = AttributeKey<String>(key: "placeholder") // <input>, <textarea>
    public static let poster = AttributeKey<String>(key: "poster") // <video> - URI
    public static let preload = AttributeKey<String>(key: "preload") // <audio>, <video> - "none", "metadata", "auto"
    public static let readonly = AttributeKey<Bool>(key: "readonly") // <input>, <textarea> - Boolean attribute
    public static let referrerpolicy = AttributeKey<String>(key: "referrerpolicy") // <a>, <area>, <iframe>, <img>, <link>, <script>
    public static let rel = AttributeKey<String>(key: "rel") // <a>, <link>, <area>, <form>
    public static let `required` = AttributeKey<Bool>(key: "required") // <input>, <select>, <textarea> - Boolean attribute
    public static let reversed = AttributeKey<Bool>(key: "reversed") // <ol> - Boolean attribute
    public static let rows = AttributeKey<Int>(key: "rows") // <textarea>
    public static let rowspan = AttributeKey<Int>(key: "rowspan") // <td>, <th>
    public static let sandbox = AttributeKey<String>(key: "sandbox") // <iframe> - space-separated list
    public static let scope = AttributeKey<String>(key: "scope") // <th> - "row", "col", "rowgroup", "colgroup"
    public static let selected = AttributeKey<Bool>(key: "selected") // <option> - Boolean attribute
    public static let shape = AttributeKey<String>(key: "shape") // <area>
    public static let size = AttributeKey<Int>(key: "size") // <input>, <select>
    public static let sizes = AttributeKey<String>(key: "sizes") // <link>, <img>, <source>
    public static let slot = AttributeKey<String>(key: "slot") // Web components - Global attribute
    public static let span = AttributeKey<Int>(key: "span") // <col>, <colgroup>
    public static let src = AttributeKey<String>(key: "src") // <img>, <script>, <audio>, <video>, <input type="image">, <iframe>, <embed>, <source> - URI
    public static let srcdoc = AttributeKey<String>(key: "srcdoc") // <iframe>
    public static let srclang = AttributeKey<String>(key: "srclang") // <track> - Language code
    public static let srcset = AttributeKey<String>(key: "srcset") // <img>, <source>
    public static let start = AttributeKey<Int>(key: "start") // <ol>
    public static let step = AttributeKey<Double>(key: "step") // <input> - "any" or float
    public static let target = AttributeKey<String>(key: "target") // <a>, <form>, <base>
    public static let type = AttributeKey<String>(key: "type") // <button>, <input>, <embed>, <link>, <menu>, <object>, <script>, <source>, <style>
    public static let value = AttributeKey<String>(key: "value") // <button>, <option>, <input>, <li value="">, <meter>, <progress>, <param> - String for generality, specific elements might treat as number
    public static let width = AttributeKey<Int>(key: "width") // <img>, <video>, <canvas>, <embed>, <iframe>, <object>, <table width="">
    public static let wrap = AttributeKey<String>(key: "wrap") // <textarea> - "soft", "hard"

    // Event handlers - adding a simple onclick for now for test purposes
    public static let onclick = AttributeKey<String>(key: "onclick")
}
