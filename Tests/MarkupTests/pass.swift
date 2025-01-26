import Testing
@testable import Songbird
@testable import Markup

@Test("[Pass Values]: Attribute Set")
func testPassAttrs() throws {
    func specialAttrs() -> [HtmlAttr] {[
        .class => "special",
        .id => "special-id",
        .style => "color: red",
    ]}

    let result = div(specialAttrs())
    let expected = "<div class=\"special\" id=\"special-id\" style=\"color: red\"></div>"
    #expect(result.render() == expected)
}

@Test("[Pass Values]: Element Set")
func testPassElements() throws {
    func headerComponent(text: String) -> ViewElement {
        return div(.class => "header") {
            h1 {
                text
            }
            div(.class => "flex") {
                p {
                    "This is a paragraph."
                }
                blockquote(.cite => "https://example.com") {
                    "This is a blockquote."
                }
            }
        }
    }

    func parentComponent(slot: ViewElement) -> ViewElement {
        return div(.id => "parent") {
            slot
        }
    }

    let result = parentComponent(slot: headerComponent(text: "Hello, World!"))
    let expected = "<div id=\"parent\"><div class=\"header\"><h1>Hello, World!</h1><div class=\"flex\"><p>This is a paragraph.</p><blockquote cite=\"https://example.com\">This is a blockquote.</blockquote></div></div></div>"
    #expect(result.render() == expected)
}
