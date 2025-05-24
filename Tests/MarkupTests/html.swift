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
    let expected = ViewElement(
        tag: "div",
        reactive: false,
        attributes: [
            TypedAttribute(key: "class", value: "header").eraseToAnyAttribute()
        ],
        children: [
            .element(ViewElement(tag: "h1", reactive: false, attributes: [], children: [.text("Hello, World!")])),
            .element(ViewElement(tag: "div", reactive: false, attributes: [], children: [
                .element(ViewElement(
                    tag: "button",
                    reactive: false,
                    attributes: [
                        TypedAttribute(key: "id", value: "action").eraseToAnyAttribute(),
                        TypedAttribute(key: "class", value: "btn").eraseToAnyAttribute(),
                        TypedAttribute(key: "style", value: "color: red").eraseToAnyAttribute(),
                        TypedAttribute(key: "onclick", value: "alert('Hello, World!')").eraseToAnyAttribute()
                    ],
                    children: [.text("Click me!")]
                )),
                .element(ViewElement(tag: "div", reactive: false, attributes: [
                    TypedAttribute(key: "class", value: "childless").eraseToAnyAttribute()
                ], children: []))
            ]))
        ]
    )
    #expect(header == expected)
}

@Test("[Builder]: Render To String") func testMarkupRender() {
    // Note: The `onclick` attribute in the original test was `HtmlAttr(key: "onclick", val: "alert('Hello, World!')")`
    // The new Attr system defines event attributes like `on.click`. Assuming this change is intended.
    // If `Attr.on.click` is not yet defined or if the old string-based `onclick` is still desired for some reason,
    // this expected string might need adjustment based on how `Attr.on.click` renders or if a generic string attribute is used.
    // Assuming `Attr.on.click` exists and renders to `onclick`:
    let expected = "<div class=\"header\"><h1>Hello, World!</h1><div><button id=\"action\" class=\"btn\" style=\"color: red\" onclick=\"alert('Hello, World!')\">Click me!</button><div class=\"childless\"></div></div></div>"
    #expect(header.render() == expected)
}

@Test("[Typed Attributes]: Render Integer Attributes") func testIntegerAttribute() {
    let element = img(.width => 100, .height => 200)
    let expected = "<img width=\"100\" height=\"200\" />"
    #expect(element.render() == expected, "Integer attributes did not render as expected.")
}

@Test("[Typed Attributes]: Render String Attributes") func testStringAttribute() {
    let element = div(.id => "myDiv", .class => "container") { "Hello" }
    let expected = "<div id=\"myDiv\" class=\"container\">Hello</div>"
    #expect(element.render() == expected, "String attributes did not render as expected.")
}

@Test("[Typed Attributes]: Render Boolean Attributes") func testBooleanAttributes() {
    let elementTrue = input(.type => "checkbox", .checked => true, .disabled => true)
    let expectedTrue = "<input type=\"checkbox\" checked disabled />"
    #expect(elementTrue.render() == expectedTrue, "True boolean attributes did not render as expected (key-only).")

    let elementFalse = input(.type => "checkbox", .checked => false, .disabled => false)
    // 'type' is string, false booleans should be omitted
    let expectedFalse = "<input type=\"checkbox\" />"
    #expect(elementFalse.render() == expectedFalse, "False boolean attributes should be omitted.")
}

@Test("[Typed Attributes]: Render Double Attributes") func testDoubleAttribute() {
    let element = progress(.value => 0.75, .max => 1.0)
    // Assuming default string conversion for Double is sufficient.
    // HTML spec allows floating point for these.
    let expected = "<progress value=\"0.75\" max=\"1.0\" />"
    #expect(element.render() == expected, "Double attributes did not render as expected.")
}

@Test("[Typed Attributes]: Render Mixed Attributes") func testMixedAttributes() {
    let element = a(.href => "/test", .id => "link1", .tabindex => 0, .hidden => true) { "Click" }
    let expected = "<a href=\"/test\" id=\"link1\" tabindex=\"0\" hidden>Click</a>"
    #expect(element.render() == expected, "Mixed attributes did not render as expected.")
}

@Test("[Typed Attributes]: Render Escaped Attribute Values") func testEscapedAttributeValues() {
    let element = img(.alt => "Image with \"quotes\" & ampersand")
    let expected = "<img alt=\"Image with &quot;quotes&quot; &amp; ampersand\" />"
    #expect(element.render() == expected, "Attribute values with special characters were not escaped correctly.")
}

