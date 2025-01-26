// MARK: - HTML Attribute Properties
extension HtmlAttr {
    // Global Attributes
    public static let accesskey = HtmlAttr(key: "accesskey")
    public static let autocapitalize = HtmlAttr(key: "autocapitalize")
    public static let `class` = HtmlAttr(key: "class")
    public static let contenteditable = HtmlAttr(key: "contenteditable")
    public static let dir = HtmlAttr(key: "dir")
    public static let draggable = HtmlAttr(key: "draggable")
    public static let enterkeyhint = HtmlAttr(key: "enterkeyhint")
    public static let hidden = HtmlAttr(key: "hidden")
    public static let id = HtmlAttr(key: "id")
    public static let inputmode = HtmlAttr(key: "inputmode")
    public static let `is` = HtmlAttr(key: "is")
    public static let itemid = HtmlAttr(key: "itemid")
    public static let itemprop = HtmlAttr(key: "itemprop")
    public static let itemref = HtmlAttr(key: "itemref")
    public static let itemscope = HtmlAttr(key: "itemscope")
    public static let itemtype = HtmlAttr(key: "itemtype")
    public static let lang = HtmlAttr(key: "lang")
    public static let nonce = HtmlAttr(key: "nonce")
    public static let spellcheck = HtmlAttr(key: "spellcheck")
    public static let style = HtmlAttr(key: "style")
    public static let tabindex = HtmlAttr(key: "tabindex")
    public static let title = HtmlAttr(key: "title")
    public static let translate = HtmlAttr(key: "translate")

    // Specific Element Attributes
    public static let accept = HtmlAttr(key: "accept") // <input>, <form>
    public static let accept_charset = HtmlAttr(key: "accept-charset") // <form>
    public static let action = HtmlAttr(key: "action") // <form>
    public static let align = HtmlAttr(key: "align") // Obsolete, but part of the spec
    public static let allow = HtmlAttr(key: "allow") // <iframe>
    public static let alt = HtmlAttr(key: "alt") // <img>, <area>, <input>
    public static let `async` = HtmlAttr(key: "async") // <script>
    public static let autocomplete = HtmlAttr(key: "autocomplete") // <form>, <input>, etc.
    public static let autofocus = HtmlAttr(key: "autofocus") // <button>, <input>, etc.
    public static let autoplay = HtmlAttr(key: "autoplay") // <audio>, <video>
    public static let charset = HtmlAttr(key: "charset") // <meta>, <script>
    public static let checked = HtmlAttr(key: "checked") // <input>
    public static let cite = HtmlAttr(key: "cite") // <blockquote>, <q>, <del>, etc.
    public static let cols = HtmlAttr(key: "cols") // <textarea>
    public static let colspan = HtmlAttr(key: "colspan") // <td>, <th>
    public static let content = HtmlAttr(key: "content") // <meta>
    public static let controls = HtmlAttr(key: "controls") // <audio>, <video>
    public static let coords = HtmlAttr(key: "coords") // <area>
    public static let crossorigin = HtmlAttr(key: "crossorigin") // <img>, <audio>, <video>, etc.
    public static let datetime = HtmlAttr(key: "datetime") // <time>, <ins>, <del>
    public static let decoding = HtmlAttr(key: "decoding") // <img>
    public static let defaultAttr = HtmlAttr(key: "default") // <track>
    public static let `defer` = HtmlAttr(key: "defer") // <script>
    public static let disabled = HtmlAttr(key: "disabled") // <button>, <input>, etc.
    public static let download = HtmlAttr(key: "download") // <a>, <area>
    public static let enctype = HtmlAttr(key: "enctype") // <form>
    public static let forAttr = HtmlAttr(key: "for") // <label>, <output>
    public static let form = HtmlAttr(key: "form") // <button>, <input>, etc.
    public static let formaction = HtmlAttr(key: "formaction") // <button>, <input>
    public static let headers = HtmlAttr(key: "headers") // <td>, <th>
    public static let height = HtmlAttr(key: "height") // <img>, <video>, etc.
    public static let high = HtmlAttr(key: "high") // <meter>
    public static let href = HtmlAttr(key: "href") // <a>, <link>, etc.
    public static let hreflang = HtmlAttr(key: "hreflang") // <a>, <link>
    public static let integrity = HtmlAttr(key: "integrity") // <link>, <script>
    public static let kind = HtmlAttr(key: "kind") // <track>
    public static let label = HtmlAttr(key: "label") // <track>, <option>, etc.
    public static let list = HtmlAttr(key: "list") // <input>
    public static let loop = HtmlAttr(key: "loop") // <audio>, <video>
    public static let low = HtmlAttr(key: "low") // <meter>
    public static let max = HtmlAttr(key: "max") // <input>, <meter>, <progress>
    public static let maxlength = HtmlAttr(key: "maxlength") // <input>, <textarea>
    public static let min = HtmlAttr(key: "min") // <input>, <meter>
    public static let minlength = HtmlAttr(key: "minlength") // <input>, <textarea>
    public static let multiple = HtmlAttr(key: "multiple") // <input>, <select>
    public static let muted = HtmlAttr(key: "muted") // <audio>, <video>
    public static let name = HtmlAttr(key: "name") // <input>, <form>, etc.
    public static let novalidate = HtmlAttr(key: "novalidate") // <form>
    public static let `open` = HtmlAttr(key: "open") // <details>, <dialog>
    public static let optimum = HtmlAttr(key: "optimum") // <meter>
    public static let pattern = HtmlAttr(key: "pattern") // <input>
    public static let placeholder = HtmlAttr(key: "placeholder") // <input>, <textarea>
    public static let poster = HtmlAttr(key: "poster") // <video>
    public static let preload = HtmlAttr(key: "preload") // <audio>, <video>
    public static let readonly = HtmlAttr(key: "readonly") // <input>, <textarea>
    public static let rel = HtmlAttr(key: "rel") // <a>, <link>
    public static let `required` = HtmlAttr(key: "required") // <input>, <select>, etc.
    public static let reversed = HtmlAttr(key: "reversed") // <ol>
    public static let rows = HtmlAttr(key: "rows") // <textarea>
    public static let rowspan = HtmlAttr(key: "rowspan") // <td>, <th>
    public static let sandbox = HtmlAttr(key: "sandbox") // <iframe>
    public static let scope = HtmlAttr(key: "scope") // <th>
    public static let selected = HtmlAttr(key: "selected") // <option>
    public static let shape = HtmlAttr(key: "shape") // <area>
    public static let size = HtmlAttr(key: "size") // <input>, <select>
    public static let sizes = HtmlAttr(key: "sizes") // <link>, <img>
    public static let slot = HtmlAttr(key: "slot") // Web components
    public static let src = HtmlAttr(key: "src") // <img>, <script>, etc.
    public static let srcdoc = HtmlAttr(key: "srcdoc") // <iframe>
    public static let srclang = HtmlAttr(key: "srclang") // <track>
    public static let srcset = HtmlAttr(key: "srcset") // <img>, <source>
    public static let start = HtmlAttr(key: "start") // <ol>
    public static let step = HtmlAttr(key: "step") // <input>
    public static let target = HtmlAttr(key: "target") // <a>, <form>
    public static let type = HtmlAttr(key: "type") // <button>, <input>, etc.
    public static let value = HtmlAttr(key: "value") // <button>, <input>, etc.
    public static let width = HtmlAttr(key: "width") // <img>, <video>, etc.
    public static let wrap = HtmlAttr(key: "wrap") // <textarea>
}

// MARK: - HTML Event Attribute Properties
extension HtmlAttr {
    public struct on {
        public static func event(_ event: String) -> HtmlAttr {
            return HtmlAttr(key: "on\(event)")
        }

        // Standard HTML Event Attributes
        public static let abort = HtmlAttr(key: "onabort")
        public static let afterprint = HtmlAttr(key: "onafterprint")
        public static let beforeprint = HtmlAttr(key: "onbeforeprint")
        public static let beforeunload = HtmlAttr(key: "onbeforeunload")
        public static let blur = HtmlAttr(key: "onblur")
        public static let cancel = HtmlAttr(key: "oncancel")
        public static let canplay = HtmlAttr(key: "oncanplay")
        public static let canplaythrough = HtmlAttr(key: "oncanplaythrough")
        public static let change = HtmlAttr(key: "onchange")
        public static let click = HtmlAttr(key: "onclick")
        public static let close = HtmlAttr(key: "onclose")
        public static let contextmenu = HtmlAttr(key: "oncontextmenu")
        public static let copy = HtmlAttr(key: "oncopy")
        public static let cuechange = HtmlAttr(key: "oncuechange")
        public static let cut = HtmlAttr(key: "oncut")
        public static let dblclick = HtmlAttr(key: "ondblclick")
        public static let drag = HtmlAttr(key: "ondrag")
        public static let dragend = HtmlAttr(key: "ondragend")
        public static let dragenter = HtmlAttr(key: "ondragenter")
        public static let dragleave = HtmlAttr(key: "ondragleave")
        public static let dragover = HtmlAttr(key: "ondragover")
        public static let dragstart = HtmlAttr(key: "ondragstart")
        public static let drop = HtmlAttr(key: "ondrop")
        public static let durationchange = HtmlAttr(key: "ondurationchange")
        public static let emptied = HtmlAttr(key: "onemptied")
        public static let ended = HtmlAttr(key: "onended")
        public static let error = HtmlAttr(key: "onerror")
        public static let focus = HtmlAttr(key: "onfocus")
        public static let focusin = HtmlAttr(key: "onfocusin")
        public static let focusout = HtmlAttr(key: "onfocusout")
        public static let formdata = HtmlAttr(key: "onformdata")
        public static let input = HtmlAttr(key: "oninput")
        public static let invalid = HtmlAttr(key: "oninvalid")
        public static let keydown = HtmlAttr(key: "onkeydown")
        public static let keypress = HtmlAttr(key: "onkeypress") // Deprecated, but included for compatibility
        public static let keyup = HtmlAttr(key: "onkeyup")
        public static let load = HtmlAttr(key: "onload")
        public static let loadeddata = HtmlAttr(key: "onloadeddata")
        public static let loadedmetadata = HtmlAttr(key: "onloadedmetadata")
        public static let loadstart = HtmlAttr(key: "onloadstart")
        public static let mousedown = HtmlAttr(key: "onmousedown")
        public static let mouseenter = HtmlAttr(key: "onmouseenter")
        public static let mouseleave = HtmlAttr(key: "onmouseleave")
        public static let mousemove = HtmlAttr(key: "onmousemove")
        public static let mouseout = HtmlAttr(key: "onmouseout")
        public static let mouseover = HtmlAttr(key: "onmouseover")
        public static let mouseup = HtmlAttr(key: "onmouseup")
        public static let mousewheel = HtmlAttr(key: "onmousewheel") // Deprecated
        public static let offline = HtmlAttr(key: "onoffline")
        public static let online = HtmlAttr(key: "ononline")
        public static let pagehide = HtmlAttr(key: "onpagehide")
        public static let pageshow = HtmlAttr(key: "onpageshow")
        public static let paste = HtmlAttr(key: "onpaste")
        public static let pause = HtmlAttr(key: "onpause")
        public static let play = HtmlAttr(key: "onplay")
        public static let playing = HtmlAttr(key: "onplaying")
        public static let popstate = HtmlAttr(key: "onpopstate")
        public static let progress = HtmlAttr(key: "onprogress")
        public static let ratechange = HtmlAttr(key: "onratechange")
        public static let resize = HtmlAttr(key: "onresize")
        public static let reset = HtmlAttr(key: "onreset")
        public static let scroll = HtmlAttr(key: "onscroll")
        public static let search = HtmlAttr(key: "onsearch")
        public static let seeked = HtmlAttr(key: "onseeked")
        public static let seeking = HtmlAttr(key: "onseeking")
        public static let select = HtmlAttr(key: "onselect")
        public static let stalled = HtmlAttr(key: "onstalled")
        public static let submit = HtmlAttr(key: "onsubmit")
        public static let suspend = HtmlAttr(key: "onsuspend")
        public static let timeupdate = HtmlAttr(key: "ontimeupdate")
        public static let toggle = HtmlAttr(key: "ontoggle")
        public static let unload = HtmlAttr(key: "onunload")
        public static let volumechange = HtmlAttr(key: "onvolumechange")
        public static let waiting = HtmlAttr(key: "onwaiting")
        public static let wheel = HtmlAttr(key: "onwheel")
    }
}
