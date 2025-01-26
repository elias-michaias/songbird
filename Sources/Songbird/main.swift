import Markup
import Alpine

func specialAttrs() -> [HtmlAttr] {[
    .class => "special",
    .id => "special-id",
    .style => "color: red",
    .x.transition(
        .duration(500),  
        .delay(100)
    )
]}

func counter(initial: Int) -> ViewElement {
    return div(.x.data => "{ count: \(initial) }") {
        h1 {
            "An Alpine Counter Component!"
        }
        h1(.x.text => "count")
        button(.x.on.click => "count++") {
            "Click me!"
        }
        div(specialAttrs())
    }
}

print(counter(initial: 1).render())
