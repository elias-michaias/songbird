// MARK: - HTML Element Functions
public func div(_ attributes: [HtmlAttr], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "div", reactive: false, attributes: attributes, children: content())
}
public func div(_ attributes: HtmlAttr..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return div(attributes, content: content)
}

public func button(_ attributes: [HtmlAttr], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "button", reactive: false, attributes: attributes, children: content())
}
public func button(_ attributes: HtmlAttr..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return button(attributes, content: content)
}

public func h1(_ attributes: [HtmlAttr], @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return ViewElement(tag: "h1", reactive: false, attributes: attributes, children: content())
}
public func h1(_ attributes: HtmlAttr..., @ViewBuilder content: () -> [ViewContent] = {[]}) -> ViewElement {
    return h1(attributes, content: content)
}
