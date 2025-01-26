import Testing
@testable import Songbird
@testable import Markup

@Test("HTML Specification: All Elements") func testHtmlSpecElements() throws {
    try #require(div().render() == "<div></div>")
    try #require(span().render() == "<span></span>")
    // TODO: Add more tests for the HTML specification
}

// TODO: Add tests for HTML attributes and events

