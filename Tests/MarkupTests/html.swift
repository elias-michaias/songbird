import Testing
@testable import Songbird
@testable import Markup

let header = div(.class => "header") {
    h1 {
        "Hello, World!"
    }
    div {
        button(.id => "action", .class => "btn", .style => "color: red", .on.click => "alert('Hello, World!')") {
            "Click me!"
        }
        div(.class => "childless")
    }
}

@Test("[Builder]: Generate Type IR") func testMarkupIR() {
    let expected = ViewElement(tag: "div", reactive: false, attributes: [Markup.HtmlAttr(key: "class", val: Optional("header"))], children: [Markup.ViewContent.element(Markup.ViewElement(tag: "h1", reactive: false, attributes: [], children: [Markup.ViewContent.text("Hello, World!")])), Markup.ViewContent.element(Markup.ViewElement(tag: "div", reactive: false, attributes: [], children: [Markup.ViewContent.element(Markup.ViewElement(tag: "button", reactive: false, attributes: [Markup.HtmlAttr(key: "id", val: Optional("action")), Markup.HtmlAttr(key: "class", val: Optional("btn")), Markup.HtmlAttr(key: "style", val: Optional("color: red")), Markup.HtmlAttr(key: "onclick", val: Optional("alert('Hello, World!')"))], children: [Markup.ViewContent.text("Click me!")])), Markup.ViewContent.element(Markup.ViewElement(tag: "div", reactive: false, attributes: [Markup.HtmlAttr(key: "class", val: Optional("childless"))], children: []))]))])
    #expect(header == expected)
}

@Test("[Builder]: Render To String") func testMarkupRender() {
    let expected = "<div class=\"header\"><h1>Hello, World!</h1><div><button id=\"action\" class=\"btn\" style=\"color: red\" onclick=\"alert('Hello, World!')\">Click me!</button><div class=\"childless\"></div></div></div>" 
    #expect(header.render() == expected)
}

