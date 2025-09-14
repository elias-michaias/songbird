// MARK: - HTML Element Functions
public func document(@ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "!DOCTYPE html", reactive: false, attributes: [], children: content())
}

public func a(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "a", reactive: false, attributes: attributes, children: content())
}
public func a(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return a(attributes, content: content)
}

public func abbr(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "abbr", reactive: false, attributes: attributes, children: content())
}
public func abbr(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return abbr(attributes, content: content)
}

public func address(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "address", reactive: false, attributes: attributes, children: content())
}
public func address(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return address(attributes, content: content)
}

public func area(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "area", reactive: false, attributes: attributes, children: [])
}
public func area(_ attributes: AnyAttribute...) -> ViewElement {
    return area(attributes)
}

public func article(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "article", reactive: false, attributes: attributes, children: content())
}
public func article(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return article(attributes, content: content)
}

public func aside(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "aside", reactive: false, attributes: attributes, children: content())
}
public func aside(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return aside(attributes, content: content)
}

public func audio(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "audio", reactive: false, attributes: attributes, children: content())
}
public func audio(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return audio(attributes, content: content)
}

public func b(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "b", reactive: false, attributes: attributes, children: content())
}
public func b(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return b(attributes, content: content)
}

public func base(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "base", reactive: false, attributes: attributes, children: [])
}
public func base(_ attributes: AnyAttribute...) -> ViewElement {
    return base(attributes)
}

public func bdi(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "bdi", reactive: false, attributes: attributes, children: content())
}
public func bdi(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return bdi(attributes, content: content)
}

public func bdo(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "bdo", reactive: false, attributes: attributes, children: content())
}
public func bdo(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return bdo(attributes, content: content)
}

public func blockquote(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "blockquote", reactive: false, attributes: attributes, children: content())
}
public func blockquote(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return blockquote(attributes, content: content)
}

public func body(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "body", reactive: false, attributes: attributes, children: content())
}
public func body(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return body(attributes, content: content)
}

public func br(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "br", reactive: false, attributes: attributes, children: [])
}
public func br(_ attributes: AnyAttribute...) -> ViewElement {
    return br(attributes)
}

public func button(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "button", reactive: false, attributes: attributes, children: content())
}
public func button(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return button(attributes, content: content)
}

public func canvas(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "canvas", reactive: false, attributes: attributes, children: content())
}
public func canvas(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return canvas(attributes, content: content)
}

public func caption(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "caption", reactive: false, attributes: attributes, children: content())
}
public func caption(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return caption(attributes, content: content)
}

public func cite(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "cite", reactive: false, attributes: attributes, children: content())
}
public func cite(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return cite(attributes, content: content)
}

public func code(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "code", reactive: false, attributes: attributes, children: content())
}
public func code(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return code(attributes, content: content)
}

public func col(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "col", reactive: false, attributes: attributes, children: [])
}
public func col(_ attributes: AnyAttribute...) -> ViewElement {
    return col(attributes)
}

public func colgroup(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "colgroup", reactive: false, attributes: attributes, children: content())
}
public func colgroup(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return colgroup(attributes, content: content)
}

public func data(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "data", reactive: false, attributes: attributes, children: content())
}
public func data(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return data(attributes, content: content)
}

public func datalist(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "datalist", reactive: false, attributes: attributes, children: content())
}
public func datalist(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return datalist(attributes, content: content)
}

public func dd(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "dd", reactive: false, attributes: attributes, children: content())
}
public func dd(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return dd(attributes, content: content)
}

public func del(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "del", reactive: false, attributes: attributes, children: content())
}
public func del(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return del(attributes, content: content)
}

public func details(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "details", reactive: false, attributes: attributes, children: content())
}
public func details(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return details(attributes, content: content)
}

public func dfn(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "dfn", reactive: false, attributes: attributes, children: content())
}
public func dfn(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return dfn(attributes, content: content)
}

public func dialog(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "dialog", reactive: false, attributes: attributes, children: content())
}
public func dialog(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return dialog(attributes, content: content)
}

public func div(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "div", reactive: false, attributes: attributes, children: content())
}
public func div(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return div(attributes, content: content)
}

public func dl(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "dl", reactive: false, attributes: attributes, children: content())
}
public func dl(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return dl(attributes, content: content)
}

public func dt(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "dt", reactive: false, attributes: attributes, children: content())
}
public func dt(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return dt(attributes, content: content)
}

public func em(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "em", reactive: false, attributes: attributes, children: content())
}
public func em(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return em(attributes, content: content)
}

public func embed(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "embed", reactive: false, attributes: attributes, children: [])
}
public func embed(_ attributes: AnyAttribute...) -> ViewElement {
    return embed(attributes)
}

public func fieldset(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "fieldset", reactive: false, attributes: attributes, children: content())
}
public func fieldset(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return fieldset(attributes, content: content)
}

public func figcaption(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "figcaption", reactive: false, attributes: attributes, children: content())
}
public func figcaption(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return figcaption(attributes, content: content)
}

public func figure(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "figure", reactive: false, attributes: attributes, children: content())
}
public func figure(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return figure(attributes, content: content)
}

public func footer(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "footer", reactive: false, attributes: attributes, children: content())
}
public func footer(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return footer(attributes, content: content)
}

public func form(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "form", reactive: false, attributes: attributes, children: content())
}
public func form(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return form(attributes, content: content)
}

public func h1(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h1", reactive: false, attributes: attributes, children: content())
}
public func h1(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h1(attributes, content: content)
}

public func h2(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h2", reactive: false, attributes: attributes, children: content())
}
public func h2(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h2(attributes, content: content)
}

public func h3(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h3", reactive: false, attributes: attributes, children: content())
}
public func h3(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h3(attributes, content: content)
}

public func h4(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h4", reactive: false, attributes: attributes, children: content())
}
public func h4(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h4(attributes, content: content)
}

public func h5(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h5", reactive: false, attributes: attributes, children: content())
}
public func h5(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h5(attributes, content: content)
}

public func h6(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h6", reactive: false, attributes: attributes, children: content())
}
public func h6(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h6(attributes, content: content)
}

public func head(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "head", reactive: false, attributes: attributes, children: content())
}
public func head(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return head(attributes, content: content)
}

public func header(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "header", reactive: false, attributes: attributes, children: content())
}
public func header(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return header(attributes, content: content)
}

public func hr(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "hr", reactive: false, attributes: attributes, children: [])
}
public func hr(_ attributes: AnyAttribute...) -> ViewElement {
    return hr(attributes)
}

public func html(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "html", reactive: false, attributes: attributes, children: content())
}
public func html(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return html(attributes, content: content)
}

public func i(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "i", reactive: false, attributes: attributes, children: content())
}
public func i(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return i(attributes, content: content)
}

public func iframe(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "iframe", reactive: false, attributes: attributes, children: [])
}
public func iframe(_ attributes: AnyAttribute...) -> ViewElement {
    return iframe(attributes)
}

public func img(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "img", reactive: false, attributes: attributes, children: [])
}
public func img(_ attributes: AnyAttribute...) -> ViewElement {
    return img(attributes)
}

public func input(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "input", reactive: false, attributes: attributes, children: [])
}
public func input(_ attributes: AnyAttribute...) -> ViewElement {
    return input(attributes)
}

public func ins(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "ins", reactive: false, attributes: attributes, children: content())
}
public func ins(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ins(attributes, content: content)
}

public func kbd(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "kbd", reactive: false, attributes: attributes, children: content())
}
public func kbd(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return kbd(attributes, content: content)
}

public func label(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "label", reactive: false, attributes: attributes, children: content())
}
public func label(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return label(attributes, content: content)
}

public func legend(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "legend", reactive: false, attributes: attributes, children: content())
}
public func legend(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return legend(attributes, content: content)
}

public func li(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "li", reactive: false, attributes: attributes, children: content())
}
public func li(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return li(attributes, content: content)
}

public func link(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "link", reactive: false, attributes: attributes, children: [])
}
public func link(_ attributes: AnyAttribute...) -> ViewElement {
    return link(attributes)
}

public func main(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "main", reactive: false, attributes: attributes, children: content())
}
public func main(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return main(attributes, content: content)
}

public func map(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "map", reactive: false, attributes: attributes, children: content())
}
public func map(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return map(attributes, content: content)
}

public func mark(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "mark", reactive: false, attributes: attributes, children: content())
}
public func mark(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return mark(attributes, content: content)
}

public func menu(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "menu", reactive: false, attributes: attributes, children: content())
}
public func menu(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return menu(attributes, content: content)
}

public func meta(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "meta", reactive: false, attributes: attributes, children: [])
}
public func meta(_ attributes: AnyAttribute...) -> ViewElement {
    return meta(attributes)
}

public func nav(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "nav", reactive: false, attributes: attributes, children: content())
}
public func nav(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return nav(attributes, content: content)
}

public func noscript(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "noscript", reactive: false, attributes: attributes, children: content())
}
public func noscript(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return noscript(attributes, content: content)
}

public func object(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "object", reactive: false, attributes: attributes, children: [])
}
public func object(_ attributes: AnyAttribute...) -> ViewElement {
    return object(attributes)
}

public func ol(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "ol", reactive: false, attributes: attributes, children: content())
}
public func ol(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ol(attributes, content: content)
}

public func optgroup(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "optgroup", reactive: false, attributes: attributes, children: content())
}
public func optgroup(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return optgroup(attributes, content: content)
}

public func option(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "option", reactive: false, attributes: attributes, children: content())
}
public func option(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return option(attributes, content: content)
}

public func output(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "output", reactive: false, attributes: attributes, children: content())
}
public func output(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return output(attributes, content: content)
}

public func p(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "p", reactive: false, attributes: attributes, children: content())
}
public func p(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return p(attributes, content: content)
}

public func picture(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "picture", reactive: false, attributes: attributes, children: content())
}
public func picture(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return picture(attributes, content: content)
}

public func pre(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "pre", reactive: false, attributes: attributes, children: content())
}
public func pre(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return pre(attributes, content: content)
}

public func progress(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "progress", reactive: false, attributes: attributes, children: [])
}
public func progress(_ attributes: AnyAttribute...) -> ViewElement {
    return progress(attributes)
}

public func q(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "q", reactive: false, attributes: attributes, children: content())
}
public func q(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return q(attributes, content: content)
}

public func rp(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "rp", reactive: false, attributes: attributes, children: content())
}
public func rp(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return rp(attributes, content: content)
}

public func rt(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "rt", reactive: false, attributes: attributes, children: content())
}
public func rt(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return rt(attributes, content: content)
}

public func ruby(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "ruby", reactive: false, attributes: attributes, children: content())
}
public func ruby(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ruby(attributes, content: content)
}

public func s(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "s", reactive: false, attributes: attributes, children: content())
}
public func s(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return s(attributes, content: content)
}

public func samp(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "samp", reactive: false, attributes: attributes, children: content())
}
public func samp(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return samp(attributes, content: content)
}

public func section(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "section", reactive: false, attributes: attributes, children: content())
}
public func section(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return section(attributes, content: content)
}

public func select(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "select", reactive: false, attributes: attributes, children: content())
}
public func select(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return select(attributes, content: content)
}

public func small(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "small", reactive: false, attributes: attributes, children: content())
}
public func small(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return small(attributes, content: content)
}

public func source(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "source", reactive: false, attributes: attributes, children: [])
}
public func source(_ attributes: AnyAttribute...) -> ViewElement {
    return source(attributes)
}

public func span(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "span", reactive: false, attributes: attributes, children: content())
}
public func span(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return span(attributes, content: content)
}

public func strong(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "strong", reactive: false, attributes: attributes, children: content())
}
public func strong(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return strong(attributes, content: content)
}
public func sub(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "sub", reactive: false, attributes: attributes, children: content())
}
public func sub(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return sub(attributes, content: content)
}

public func summary(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "summary", reactive: false, attributes: attributes, children: content())
}
public func summary(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return summary(attributes, content: content)
}

public func sup(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "sup", reactive: false, attributes: attributes, children: content())
}
public func sup(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return sup(attributes, content: content)
}

public func table(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "table", reactive: false, attributes: attributes, children: content())
}
public func table(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return table(attributes, content: content)
}

public func tbody(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "tbody", reactive: false, attributes: attributes, children: content())
}
public func tbody(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return tbody(attributes, content: content)
}

public func td(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "td", reactive: false, attributes: attributes, children: content())
}
public func td(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return td(attributes, content: content)
}

public func template(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "template", reactive: false, attributes: attributes, children: content())
}
public func template(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return template(attributes, content: content)
}

public func textarea(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "textarea", reactive: false, attributes: attributes, children: content())
}
public func textarea(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return textarea(attributes, content: content)
}

public func tfoot(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "tfoot", reactive: false, attributes: attributes, children: content())
}
public func tfoot(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return tfoot(attributes, content: content)
}

public func th(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "th", reactive: false, attributes: attributes, children: content())
}
public func th(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return th(attributes, content: content)
}

public func thead(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "thead", reactive: false, attributes: attributes, children: content())
}
public func thead(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return thead(attributes, content: content)
}

public func time(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "time", reactive: false, attributes: attributes, children: content())
}
public func time(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return time(attributes, content: content)
}

public func title(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "title", reactive: false, attributes: attributes, children: [])
}
public func title(_ attributes: AnyAttribute...) -> ViewElement {
    return title(attributes)
}

public func tr(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "tr", reactive: false, attributes: attributes, children: content())
}
public func tr(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return tr(attributes, content: content)
}

public func track(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "track", reactive: false, attributes: attributes, children: [])
}
public func track(_ attributes: AnyAttribute...) -> ViewElement {
    return track(attributes)
}

public func u(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "u", reactive: false, attributes: attributes, children: content())
}
public func u(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return u(attributes, content: content)
}

public func ul(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "ul", reactive: false, attributes: attributes, children: content())
}
public func ul(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ul(attributes, content: content)
}

public func `var`(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "var", reactive: false, attributes: attributes, children: content())
}
public func `var`(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return `var`(attributes, content: content)
}

public func video(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "video", reactive: false, attributes: attributes, children: content())
}
public func video(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return video(attributes, content: content)
}

public func wbr(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "wbr", reactive: false, attributes: attributes, children: [])
}
public func wbr(_ attributes: AnyAttribute...) -> ViewElement {
    return wbr(attributes)
}

// MARK: - Scripting
public func script(_ attributes: [AnyAttribute]) -> ViewElement {
    return ViewElement(tag: "script", reactive: false, attributes: attributes, children: [])
}
public func script(_ attributes: AnyAttribute...) -> ViewElement {
    return script(attributes)
}

// MARK: - Styling
public func style(_ attributes: [AnyAttribute], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "style", reactive: false, attributes: attributes, children: content())
}
public func style(_ attributes: AnyAttribute..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return style(attributes, content: content)
}
