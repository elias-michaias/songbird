// Tests/CompatTests/alpine.swift
import Testing
@testable import Markup // For ViewElement, Attr, etc.
// No need to import Songbird unless specific Songbird executables/configs are tested.
// No need to import Alpine module directly unless testing its internal logic beyond Attr definitions.

@Test("[Alpine Compat]: Render x-data attribute") func testAlpineXData() {
    let element = div(.x.data => "{ message: 'Hello' }") { "Content" }
    let expected = "<div x-data=\"{ message: 'Hello' }\">Content</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-data attribute did not render as expected.")
}

@Test("[Alpine Compat]: Render x-show attribute") func testAlpineXShow() {
    let element = p(.x.show => "isOpen") { "Details" }
    let expected = "<p x-show=\"isOpen\">Details</p>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-show attribute did not render as expected.")
}

@Test("[Alpine Compat]: Render x-on:click attribute") func testAlpineXOnClick() {
    let element = button(.x.on.click => "sayHello()") { "Click Me" }
    let expected = "<button x-on:click=\"sayHello()\">Click Me</button>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-on:click attribute did not render as expected.")
}

@Test("[Alpine Compat]: Render x-transition (boolean-like usage)") func testAlpineXTransitionBoolean() {
    // x-transition can act as a boolean attribute (presence enables default transitions)
    // If we want it to be a string always, then it would be .x.transition => ""
    // Assuming .x.transition => "" for an empty/default string value if no specific modifiers.
    // Or, if we had AttributeKey<Bool> for a version of x-transition, it would be different.
    // Since Attr.x.transition is AttributeKey<String>, an empty string is appropriate for default.
    let element = div(.x.transition => "") { "Animated" }
    let expected = "<div x-transition=\"\">Animated</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-transition (empty string) did not render as expected.")
}

@Test("[Alpine Compat]: Render x-transition with simple modifiers") func testAlpineXTransitionModifiers() {
    let element = div(.x.transition => "opacity") { "Animated" }
    let expected = "<div x-transition=\"opacity\">Animated</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-transition with 'opacity' did not render as expected.")
}

@Test("[Alpine Compat]: Render x-transition phase attributes") func testAlpineXTransitionPhases() {
    let element = div(
        .x.transitionEnter => "ease-out duration-300",
        .x.transitionEnterStart => "opacity-0 scale-90",
        .x.transitionEnterEnd => "opacity-100 scale-100",
        .x.transitionLeave => "ease-in duration-200",
        .x.transitionLeaveStart => "opacity-100 scale-100",
        .x.transitionLeaveEnd => "opacity-0 scale-90"
    ) { "Content" }
    let expected = "<div x-transition:enter=\"ease-out duration-300\" x-transition:enter-start=\"opacity-0 scale-90\" x-transition:enter-end=\"opacity-100 scale-100\" x-transition:leave=\"ease-in duration-200\" x-transition:leave-start=\"opacity-100 scale-100\" x-transition:leave-end=\"opacity-0 scale-90\">Content</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-transition phase attributes did not render as expected.")
}

// Example from original main.swift, now using direct phase attributes
// This test demonstrates how the user might achieve the previously intended effect.
@Test("[Alpine Compat]: Render complex transition like original main.swift example") func testAlpineComplexTransitionExample() {
    // Original main.swift had: .x.transition(.duration(500), .delay(100))
    // This was non-standard. The new way is to use classes or specific phase attributes.
    // If the intent was to use global transition classes:
    let element = div(
        .class => "transition duration-500 delay-100", // Changed Attr.class to .class
        .x.transitionEnter => "ease-out",
        .x.transitionEnterStart => "opacity-0",
        .x.transitionEnterEnd => "opacity-100",
        .x.transitionLeave => "ease-in",
        .x.transitionLeaveStart => "opacity-100",
        .x.transitionLeaveEnd => "opacity-0"
    ) { "Content" }
    // Note: The exact rendering depends on how these are combined.
    // This test shows usage of phase attributes alongside global classes.
    let expected = "<div class=\"transition duration-500 delay-100\" x-transition:enter=\"ease-out\" x-transition:enter-start=\"opacity-0\" x-transition:enter-end=\"opacity-100\" x-transition:leave=\"ease-in\" x-transition:leave-start=\"opacity-100\" x-transition:leave-end=\"opacity-0\">Content</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine complex transition example did not render as expected.")
}

// Add more tests as needed for other x-attributes like x-bind, x-text, x-init, etc.
@Test("[Alpine Compat]: Render x-init attribute") func testAlpineXInit() {
    let element = div(.x.init => "setup()") { "Content" }
    let expected = "<div x-init=\"setup()\">Content</div>" // Escaped quotes
    #expect(element.render() == expected, "Alpine x-init attribute did not render as expected.")
}

@Test("[Alpine Compat]: Render x-bind attribute") func testAlpineXBind() {
    let element = button(.x.bind.disabled => "isDisabled") { "Submit" }
    // Assuming Attr.x.bind is AttributeKey<String> and we manually form "x-bind:disabled"
    // This requires Attr.x.bind to be defined as a prefix, or have sub-properties.
    // The current definition of Attr.x.bind = AttributeKey<String>(key: "x-bind")
    // would be used like: .x.bind => "type: 'button', class: 'foo'"
    // For .x.bind.disabled, we'd need Attr.x.bind.disabled = AttributeKey<String>(key: "x-bind:disabled")

    // Let's test the simple .x.bind case first.
    let elementSimpleBind = div(.x.bind => "myAttributes") { "Content" }
    let expectedSimpleBind = "<div x-bind=\"myAttributes\">Content</div>" // Escaped quotes
    #expect(elementSimpleBind.render() == expectedSimpleBind, "Alpine x-bind (simple) did not render as expected.")

    // To support .x.bind.disabled => "isDisabled", Attr.x.bind needs to be a struct itself, like Attr.x.on.
    // For now, this subtask will only test what's directly defined.
    // A more complex x-bind structure can be a future enhancement.
}
