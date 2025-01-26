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
            let attributesHTML = attributes.map { attribute in
                attribute.val == nil ? attribute.key : "\(attribute.key)=\"\(attribute.val!)\""
            }.joined(separator: " ")
            html += " \(attributesHTML)"
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

            // Add the closing tag
            html += "</\(tag)>"
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
}
