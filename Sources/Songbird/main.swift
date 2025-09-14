import Markup
import Alpine // For .x namespace
// No specific import for hx or on needed if they are globally available via Markup module's exports.

// Ensure global attribute keys like .class, .id, .style are available.
// Ensure .x, .hx, .on are available as global constants.

func specialAttrs() -> [AnyAttribute] {[ // Return type is [AnyAttribute]
    .class => "special",                 // Ergonomic .class
    .id => "special-id",                   // Ergonomic .id
    .style => "color: red",                // Ergonomic .style
    // Ergonomic Alpine transition attributes
    .x.transition => "", 
    .x.transitionEnter => "ease-out duration-500",
    .x.transitionEnterStart => "opacity-0 transform scale-90",
    .x.transitionEnterEnd => "opacity-100 transform scale-100",
    .x.transitionLeave => "ease-in duration-100",
    .x.transitionLeaveStart => "opacity-100 transform scale-100",
    .x.transitionLeaveEnd => "opacity-0 transform scale-90"
]}

func counter(initial: Int) -> ViewElement {
    return div(.x.data => "{ count: \(initial) }") { // Ergonomic .x.data
        h1 {
            "An Alpine Counter Component!"
        }
        h1(.x.text => "count") // Ergonomic .x.text
        button(.x.on.click => "count++") { // Ergonomic .x.on.click
            "Click me!"
        }
        br()
        div(specialAttrs())
    }
}

let doc = 
document { 
    html {
        body {
            counter(initial: 1) 
        }
    }
}

print(doc.render())
