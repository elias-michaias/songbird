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
        public static let hashchange = HtmlAttr(key: "onhashchange")
        public static let input = HtmlAttr(key: "oninput")
        public static let invalid = HtmlAttr(key: "oninvalid")
        public static let keydown = HtmlAttr(key: "onkeydown")
        public static let keypress = HtmlAttr(key: "onkeypress") // Deprecated, but included for compatibility
        public static let keyup = HtmlAttr(key: "onkeyup")
        public static let load = HtmlAttr(key: "onload")
        public static let loadeddata = HtmlAttr(key: "onloadeddata")
        public static let loadedmetadata = HtmlAttr(key: "onloadedmetadata")
        public static let loadstart = HtmlAttr(key: "onloadstart")
        public static let message = HtmlAttr(key: "onmessage") 
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
        public static let storage = HtmlAttr(key: "onstorage")
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
