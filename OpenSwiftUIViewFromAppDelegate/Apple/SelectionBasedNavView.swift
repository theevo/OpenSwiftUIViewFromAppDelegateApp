//
// Migrating to new navigation types
// From Apple
//
// https://developer.apple.com/documentation/swiftui/migrating-to-new-navigation-types
//

import SwiftUI

struct SelectionBasedNavView: View {
    let colors: [Color] = [.purple, .pink, .orange]
    @Binding var selection: Color? // Nothing selected by default.

    var body: some View {
        NavigationSplitView {
            List(colors, id: \.self, selection: $selection) { color in
                NavigationLink(color.description, value: color)
            }
        } detail: {
            if let color = selection {
                ColorDetail(color: color)
            } else {
                Text("Pick a color")
            }
        }
    }
}

struct SelectionBasedNavView_Previews: PreviewProvider {
    struct PinkSelectedPreview: View {
        @State var color: Color = Color.pink
        var body: some View {
            SelectionBasedNavView(selection: .constant(color))
        }
    }
    
    static var previews: some View {
        PinkSelectedPreview()
    }
}
