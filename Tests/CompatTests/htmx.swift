// Tests/CompatTests/htmx.swift
import Testing
@testable import Markup // For ViewElement, Attr, etc.

@Test("[HTMX Compat]: Render hx-get attribute") func testHtmxGet() {
    let element = div(.hx.get => "/api/data") { "Get Data" }
    let expected = "<div hx-get=\"/api/data\">Get Data</div>"
    #expect(element.render() == expected, "HTMX hx-get attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-post attribute") func testHtmxPost() {
    let element = button(.hx.post => "/submit") { "Submit" }
    let expected = "<button hx-post=\"/submit\">Submit</button>"
    #expect(element.render() == expected, "HTMX hx-post attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-trigger attribute") func testHtmxTrigger() {
    let element = input(.hx.trigger => "keyup changed delay:500ms")
    let expected = "<input hx-trigger=\"keyup changed delay:500ms\" />"
    #expect(element.render() == expected, "HTMX hx-trigger attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-target attribute") func testHtmxTarget() {
    let element = div(.hx.target => "#response-area") { "Load Here" }
    let expected = "<div hx-target=\"#response-area\">Load Here</div>"
    #expect(element.render() == expected, "HTMX hx-target attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-swap attribute") func testHtmxSwap() {
    let element = button(.hx.swap => "outerHTML transition:true") { "Swap Me" }
    let expected = "<button hx-swap=\"outerHTML transition:true\">Swap Me</button>"
    #expect(element.render() == expected, "HTMX hx-swap attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-boost (boolean) attribute") func testHtmxBoost() {
    let elementTrue = div(.hx.boost => true) { "Boosted" }
    let expectedTrue = "<div hx-boost>Boosted</div>"
    #expect(elementTrue.render() == expectedTrue, "HTMX hx-boost (true) did not render as key-only.")

    let elementFalse = div(.hx.boost => false) { "Not Boosted" }
    let expectedFalse = "<div>Not Boosted</div>" // Attribute should be omitted
    #expect(elementFalse.render() == expectedFalse, "HTMX hx-boost (false) was not omitted.")
}

@Test("[HTMX Compat]: Render hx-push-url (string) attribute") func testHtmxPushUrl() {
    let elementTrue = a(.hx.pushUrl => "true") { "Link1" }
    let expectedTrue = "<a hx-push-url=\"true\">Link1</a>"
    #expect(elementTrue.render() == expectedTrue, "HTMX hx-push-url ('true' string) did not render as expected.")

    let elementPath = a(.hx.pushUrl => "/new-path") { "Link2" }
    let expectedPath = "<a hx-push-url=\"/new-path\">Link2</a>"
    #expect(elementPath.render() == expectedPath, "HTMX hx-push-url (path string) did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-confirm attribute") func testHtmxConfirm() {
    let element = button(.hx.post => "/delete", .hx.confirm => "Are you sure you want to delete?") { "Delete" }
    let expected = "<button hx-post=\"/delete\" hx-confirm=\"Are you sure you want to delete?\">Delete</button>"
    #expect(element.render() == expected, "HTMX hx-confirm attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render hx-indicator attribute") func testHtmxIndicator() {
    let element = button(.hx.indicator => "#loading-spinner") { "Save" }
    let expected = "<button hx-indicator=\"#loading-spinner\">Save</button>"
    #expect(element.render() == expected, "HTMX hx-indicator attribute did not render as expected.")
}

@Test("[HTMX Compat]: Render multiple HTMX attributes") func testMultipleHtmxAttributes() {
    let element = div(
        .hx.post => "/test-resource",
        .hx.trigger => "click",
        .hx.target => "#content",
        .hx.swap => "innerHTML"
    ) { "Click to Load" }
    let expected = "<div hx-post=\"/test-resource\" hx-trigger=\"click\" hx-target=\"#content\" hx-swap=\"innerHTML\">Click to Load</div>"
    #expect(element.render() == expected, "Multiple HTMX attributes did not render as expected.")
}
