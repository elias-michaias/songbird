# Songbird

Songbird is a Swift library for generating HTML using a Domain Specific Language (DSL). The DSL allows you to write HTML directly within your Swift code, maintaining Swift's syntax and enabling a type-safe and expressive way to build web interfaces. Songbird also includes built-in support for easy integration with popular front-end libraries such as Alpine.js and HTMX.

## Features

- **Swift-native HTML DSL:** Write HTML directly in Swift, using familiar syntax and benefiting from Swift's type safety.
- **Alpine.js Integration:** Seamlessly integrate Alpine.js components and directives into your HTML.
- **HTMX Support:** Easily add HTMX attributes for dynamic web pages without complex JavaScript.
- **Type-Safe Construction:** Reduce runtime errors with Swift's type system ensuring HTML correctness at compile time.
- **Extensible by Design:** Easily extend and customize the library to fit your specific needs.

## Installation

To use Songbird in your Swift project, add it as a dependency through Swift Package Manager.

1.  Open your `Package.swift` file.
2.  Add Songbird to the `dependencies` array within your `Package` description:

    ```swift
    dependencies: [
        .package(url: "https://github.com/user/Songbird.git", from: "0.1.0")
    ]
    ```

3.  Add "Songbird" to your target's dependencies. If you plan to use the built-in Alpine.js or HTMX integrations directly, you might also need to include "Alpine" and "HTMX" (this will be clarified once the library structure is finalized, for now assume they are included via Songbird):

    ```swift
    targets: [
        .target(
            name: "YourProjectName",
            dependencies: ["Songbird"]),
        // ... other targets
    ]
    ```

## Usage

This section demonstrates how to use Songbird to generate HTML, integrate with Alpine.js, and utilize HTMX for dynamic content.

### Basic HTML Generation

Songbird allows you to define HTML structures directly in Swift. Here's a simple example:

```swift
import Markup

let simplePage = document {
    html {
        head {
            title { "My First Songbird Page" }
        }
        body {
            h1 { "Hello, Songbird!" }
            p { "This is a paragraph generated with Swift." }
        }
    }
}

print(simplePage.render())
```

This code will output:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>My First Songbird Page</title>
  </head>
  <body>
    <h1>Hello, Songbird!</h1>
    <p>This is a paragraph generated with Swift.</p>
  </body>
</html>
```

### Using Alpine.js

Songbird provides a compatibility layer for Alpine.js, allowing you to add Alpine directives to your HTML elements.

```swift
import Markup
import Alpine // Assuming Alpine is a module within Songbird or a separate import

func counter(initial: Int) -> ViewElement {
    div(.x.data => "{ count: \(initial) }") { // x.data sets up Alpine component state
        h1 { "Alpine.js Counter" }
        h1(.x.text => "count") // x.text binds the content of this h1 to the 'count' variable
        button(.x.on.click => "count++") { "Increment" } // x.on.click handles the click event
    }
}

let alpineExample = document {
    html {
        head {
            title { "Alpine.js Example" }
            // Important: Include Alpine.js script for it to work in a browser
            script(.defer => true, .src => "https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js") {}
        }
        body {
            counter(initial: 0)
        }
    }
}

print(alpineExample.render())
```

When rendered and viewed in a browser with JavaScript enabled, this will create a functional counter. The `x.data`, `x.text`, and `x.on.click` attributes are Songbird's way of expressing Alpine.js directives.

### Using HTMX

Songbird also supports HTMX for creating dynamic web applications with minimal JavaScript.

```swift
import Markup
import HTMX // Assuming HTMX is a module within Songbird or a separate import

let htmxExample = document {
    html {
        head {
            title { "HTMX Example" }
            // Important: Include HTMX script for it to work in a browser
            script(.src => "https://unpkg.com/htmx.org@1.9.10") {}
        }
        body {
            button(
                .hx.get => "/htmx-content", // Tells HTMX to make a GET request to /htmx-content
                .hx.swap => "outerHTML"    // Tells HTMX to replace the button itself with the response
            ) {
                "Load Content with HTMX"
            }
        }
    }
}

print(htmxExample.render())
```

This example creates a button that, when clicked, will make a GET request to `/htmx-content` and replace the button itself with the HTML content returned by the server. The `.hx.get` and `.hx.swap` attributes are Songbird's way of expressing HTMX directives.

## Contributing

Contributions are welcome! If you'd like to help improve Songbird, please feel free to:
- Report bugs or issues.
- Suggest new features or enhancements.
- Submit pull requests with improvements.

When contributing code, please try to follow the existing coding style and include tests for new functionality where applicable.

## License

Songbird is released under the MIT License. See the LICENSE file for more details.
