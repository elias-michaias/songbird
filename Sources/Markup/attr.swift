// Sources/Markup/attr.swift

import Foundation

public struct AttributeKey<T: Sendable>: Sendable {
    public let key: String
    public init(key: String) {
        self.key = key
    }
}

// Global Attributes
public let accesskey = AttributeKey<String>(key: "accesskey")
public let autocapitalize = AttributeKey<String>(key: "autocapitalize") // "none", "sentences", "words", "characters"
public let `class` = AttributeKey<String>(key: "class")
public let contenteditable = AttributeKey<String>(key: "contenteditable") // "true", "false", "" - can also be inherited
public let dir = AttributeKey<String>(key: "dir") // "ltr", "rtl", "auto"
public let draggable = AttributeKey<Bool>(key: "draggable") // "true", "false" (HTML spec) -> Bool maps well
public let enterkeyhint = AttributeKey<String>(key: "enterkeyhint")
public let hidden = AttributeKey<Bool>(key: "hidden") // Boolean attribute
public let id = AttributeKey<String>(key: "id")
public let inputmode = AttributeKey<String>(key: "inputmode")
public let `is` = AttributeKey<String>(key: "is") // For custom elements
public let itemid = AttributeKey<String>(key: "itemid")
public let itemprop = AttributeKey<String>(key: "itemprop") // Can be multiple space-separated
public let itemref = AttributeKey<String>(key: "itemref") // Can be multiple space-separated id's
public let itemscope = AttributeKey<Bool>(key: "itemscope") // Boolean attribute
public let itemtype = AttributeKey<String>(key: "itemtype") // URI
public let lang = AttributeKey<String>(key: "lang") // Language code
public let nonce = AttributeKey<String>(key: "nonce")
public let spellcheck = AttributeKey<String>(key: "spellcheck") // "true", "false", ""
public let style = AttributeKey<String>(key: "style") // CSS
public let tabindex = AttributeKey<Int>(key: "tabindex")
public let title = AttributeKey<String>(key: "title")
public let translate = AttributeKey<String>(key: "translate") // "yes", "no"

// Specific Element Attributes (now also global)
public let accept = AttributeKey<String>(key: "accept") // <input>, <form>
public let accept_charset = AttributeKey<String>(key: "accept-charset") // <form>
public let action = AttributeKey<String>(key: "action") // <form> - URI
public let align = AttributeKey<String>(key: "align") // Obsolete, but part of the spec
public let allow = AttributeKey<String>(key: "allow") // <iframe>
public let alt = AttributeKey<String>(key: "alt") // <img>, <area>, <input>
public let `async` = AttributeKey<Bool>(key: "async") // <script> - Boolean attribute
public let autocomplete = AttributeKey<String>(key: "autocomplete") // <form>, <input>, etc.
public let autofocus = AttributeKey<Bool>(key: "autofocus") // <button>, <input>, etc. - Boolean attribute
public let autoplay = AttributeKey<Bool>(key: "autoplay") // <audio>, <video> - Boolean attribute
public let charset = AttributeKey<String>(key: "charset") // <meta>, <script>
public let checked = AttributeKey<Bool>(key: "checked") // <input> - Boolean attribute
public let cite = AttributeKey<String>(key: "cite") // <blockquote>, <q>, <del>, etc. - URI
public let cols = AttributeKey<Int>(key: "cols") // <textarea>
public let colspan = AttributeKey<Int>(key: "colspan") // <td>, <th>
public let content = AttributeKey<String>(key: "content") // <meta>
public let controls = AttributeKey<Bool>(key: "controls") // <audio>, <video> - Boolean attribute
public let coords = AttributeKey<String>(key: "coords") // <area>
public let crossorigin = AttributeKey<String>(key: "crossorigin") // <img>, <audio>, <video>, etc.
public let datetime = AttributeKey<String>(key: "datetime") // <time>, <ins>, <del>
public let decoding = AttributeKey<String>(key: "decoding") // <img> - "sync", "async", "auto"
public let defaultAttr = AttributeKey<Bool>(key: "default") // <track> - Renamed from `default` in original Attr enum to avoid keyword clash if not escaped. Now `defaultAttr` or `\`default\``
public let `defer` = AttributeKey<Bool>(key: "defer") // <script> - Boolean attribute
public let disabled = AttributeKey<Bool>(key: "disabled") // <button>, <input>, etc. - Boolean attribute
public let download = AttributeKey<String>(key: "download") // <a>, <area> - Can be empty string or filename
public let enctype = AttributeKey<String>(key: "enctype") // <form>
public let `for` = AttributeKey<String>(key: "for") // <label>, <output>
public let form = AttributeKey<String>(key: "form") // <button>, <input>, etc. - ID of form
public let formaction = AttributeKey<String>(key: "formaction") // <button>, <input> - URI
public let formenctype = AttributeKey<String>(key: "formenctype") // <button>, <input>
public let formmethod = AttributeKey<String>(key: "formmethod") // <button>, <input>
public let formnovalidate = AttributeKey<Bool>(key: "formnovalidate") // <button>, <input> - Boolean attribute
public let formtarget = AttributeKey<String>(key: "formtarget") // <button>, <input>
public let headers = AttributeKey<String>(key: "headers") // <td>, <th> - space-separated list of IDs
public let height = AttributeKey<Int>(key: "height") // <img>, <video>, etc.
public let high = AttributeKey<Double>(key: "high") // <meter>
public let href = AttributeKey<String>(key: "href") // <a>, <link>, etc. - URI
public let hreflang = AttributeKey<String>(key: "hreflang") // <a>, <link> - Language code
public let inert = AttributeKey<Bool>(key: "inert") // Global attribute, not just link/script - Boolean attribute
public let integrity = AttributeKey<String>(key: "integrity") // <link>, <script>
public let kind = AttributeKey<String>(key: "kind") // <track>
public let label = AttributeKey<String>(key: "label") // <track>, <option>, etc.
public let list = AttributeKey<String>(key: "list") // <input> - ID of datalist
public let loop = AttributeKey<Bool>(key: "loop") // <audio>, <video> - Boolean attribute
public let low = AttributeKey<Double>(key: "low") // <meter>
public let max = AttributeKey<Double>(key: "max") // <input>, <meter>, <progress>
public let maxlength = AttributeKey<Int>(key: "maxlength") // <input>, <textarea>
public let min = AttributeKey<Double>(key: "min") // <input>, <meter>
public let minlength = AttributeKey<Int>(key: "minlength") // <input>, <textarea>
public let multiple = AttributeKey<Bool>(key: "multiple") // <input>, <select> - Boolean attribute
public let muted = AttributeKey<Bool>(key: "muted") // <audio>, <video> - Boolean attribute
public let name = AttributeKey<String>(key: "name") // <input>, <form>, etc.
public let novalidate = AttributeKey<Bool>(key: "novalidate") // <form> - Boolean attribute
public let `open` = AttributeKey<Bool>(key: "open") // <details>, <dialog> - Boolean attribute
public let optimum = AttributeKey<Double>(key: "optimum") // <meter>
public let part = AttributeKey<String>(key: "part") // Global attribute - space-separated list
public let pattern = AttributeKey<String>(key: "pattern") // <input> - Regex
public let ping = AttributeKey<String>(key: "ping") // <a>, <area> - space-separated list of URIs
public let placeholder = AttributeKey<String>(key: "placeholder") // <input>, <textarea>
public let poster = AttributeKey<String>(key: "poster") // <video> - URI
public let preload = AttributeKey<String>(key: "preload") // <audio>, <video> - "none", "metadata", "auto"
public let readonly = AttributeKey<Bool>(key: "readonly") // <input>, <textarea> - Boolean attribute
public let referrerpolicy = AttributeKey<String>(key: "referrerpolicy") // <a>, <area>, <iframe>, <img>, <link>, <script>
public let rel = AttributeKey<String>(key: "rel") // <a>, <link>, <area>, <form>
public let `required` = AttributeKey<Bool>(key: "required") // <input>, <select>, <textarea> - Boolean attribute
public let reversed = AttributeKey<Bool>(key: "reversed") // <ol> - Boolean attribute
public let rows = AttributeKey<Int>(key: "rows") // <textarea>
public let rowspan = AttributeKey<Int>(key: "rowspan") // <td>, <th>
public let sandbox = AttributeKey<String>(key: "sandbox") // <iframe> - space-separated list
public let scope = AttributeKey<String>(key: "scope") // <th> - "row", "col", "rowgroup", "colgroup"
public let selected = AttributeKey<Bool>(key: "selected") // <option> - Boolean attribute
public let shape = AttributeKey<String>(key: "shape") // <area>
public let size = AttributeKey<Int>(key: "size") // <input>, <select>
public let sizes = AttributeKey<String>(key: "sizes") // <link>, <img>, <source>
public let slot = AttributeKey<String>(key: "slot") // Web components - Global attribute
public let span = AttributeKey<Int>(key: "span") // <col>, <colgroup>
public let src = AttributeKey<String>(key: "src") // <img>, <script>, <audio>, <video>, <input type="image">, <iframe>, <embed>, <source> - URI
public let srcdoc = AttributeKey<String>(key: "srcdoc") // <iframe>
public let srclang = AttributeKey<String>(key: "srclang") // <track> - Language code
public let srcset = AttributeKey<String>(key: "srcset") // <img>, <source>
public let start = AttributeKey<Int>(key: "start") // <ol>
public let step = AttributeKey<Double>(key: "step") // <input> - "any" or float
public let target = AttributeKey<String>(key: "target") // <a>, <form>, <base>
public let type = AttributeKey<String>(key: "type") // <button>, <input>, <embed>, <link>, <menu>, <object>, <script>, <source>, <style>
public let value = AttributeKey<String>(key: "value") // <button>, <option>, <input>, <li value="">, <meter>, <progress>, <param> - String for generality, specific elements might treat as number
public let width = AttributeKey<Int>(key: "width") // <img>, <video>, <canvas>, <embed>, <iframe>, <object>, <table width="">
public let wrap = AttributeKey<String>(key: "wrap") // <textarea> - "soft", "hard"

// Event handlers - adding a simple onclick for now for test purposes
// This will be moved to event.swift later.
// public let onclick = AttributeKey<String>(key: "onclick") // Removed as it will be in event.swift as on.click
