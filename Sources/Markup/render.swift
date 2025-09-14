import Foundation

// MARK: - HTML Renderer
public extension ViewElement {
    func render() -> String {
        // List of self-closing tags
        let selfClosingTags = [
            "area", "base", "br", "col", "embed", "hr", "img", "input", "link", 
            "meta", "source", "track", "wbr"
        ]

        // Start with the opening tag
        var html = "<\(tag)"

        // Render attributes
        if !attributes.isEmpty {
            let attributeStrings = attributes.compactMap { attribute -> String? in
                if attribute.isBooleanTrue {
                    return attribute.key // Render only key for true booleans
                } else if let valueString = attribute.stringValue() {
                    // If valueString is empty (e.g. for some specific attributes like `alt=""`),
                    // it will correctly render as key="".
                    return "\(attribute.key)=\"\(escapeAttributeValue(valueString))\""
                }
                return nil // Skip attribute if not boolean true and no string value, or if stringValue is nil
            }
            if !attributeStrings.isEmpty {
                html += " " + attributeStrings.joined(separator: " ")
            }
        }

        // Check if it's a self-closing tag
        if selfClosingTags.contains(tag) {
            html += " />"
        } else {
            html += ">" // Close the opening tag

            // Render children
            for child in children {
                switch child {
                case .text(let textContent):
                    html += escapeHTML(textContent)
                case .element(let childElement):
                    html += childElement.render() // Recursive call
                }
            }

            if tag != "!DOCTYPE html" {
                // Add the closing tag
                html += "</\(tag)>"
            }
        }

        return html
    }

    private func escapeHTML(_ string: String) -> String {
        // Replace special HTML characters with their escaped equivalents
        return string
            .replacingOccurrences(of: "&", with: "&amp;")
            .replacingOccurrences(of: "<", with: "&lt;")
            .replacingOccurrences(of: ">", with: "&gt;")
            .replacingOccurrences(of: "\"", with: "&quot;")
            .replacingOccurrences(of: "'", with: "&#39;")
    }

    private func escapeAttributeValue(_ string: String) -> String {
        // Basic escaping for attribute values. HTML spec is complex, but & and " are key.
        // Values can also not contain < or > usually, but quotes and ampersands are most critical.
        return string
            .replacingOccurrences(of: "&", with: "&amp;")
            .replacingOccurrences(of: "\"", with: "&quot;")
    }
}
