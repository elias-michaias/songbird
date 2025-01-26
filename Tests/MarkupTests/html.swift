import Testing
@testable import Songbird
@testable import Markup

let header = div(.class => "header") {
    h1 {
        "Hello, World!"
    }
    div {
        button(.id => "action", .class => "btn", .style => "color: red") {
            "Click me!"
        }
        div(.class => "childless")
    }
}

@Test("Builder functions generate IR correctly") func testMarkupIR() {
    let expected = ViewElement(tag: "div", reactive: false, attributes: [Markup.HtmlAttr(key: "class", value: Optional("header"))], children: [Markup.ViewContent.element(Markup.ViewElement(tag: "h1", reactive: false, attributes: [], children: [Markup.ViewContent.text("Hello, World!")])), Markup.ViewContent.element(Markup.ViewElement(tag: "div", reactive: false, attributes: [], children: [Markup.ViewContent.element(Markup.ViewElement(tag: "button", reactive: false, attributes: [Markup.HtmlAttr(key: "id", value: Optional("action")), Markup.HtmlAttr(key: "class", value: Optional("btn")), Markup.HtmlAttr(key: "style", value: Optional("color: red"))], children: [Markup.ViewContent.text("Click me!")])), Markup.ViewContent.element(Markup.ViewElement(tag: "div", reactive: false, attributes: [Markup.HtmlAttr(key: "class", value: Optional("childless"))], children: []))]))])
    #expect(header == expected)
}

@Test("Render function generates HTML correctly") func testMarkupRender() {
    let expected = "<div class=\"header\"><h1>Hello, World!</h1><div><button id=\"action\" class=\"btn\" style=\"color: red\">Click me!</button><div class=\"childless\"></div></div></div>" 
    #expect(header.render() == expected)
}

