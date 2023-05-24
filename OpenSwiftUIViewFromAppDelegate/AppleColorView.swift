//
// Migrating to new navigation types
// From Apple
// https://developer.apple.com/documentation/swiftui/migrating-to-new-navigation-types
//

import SwiftUI

struct AppleColorView: View {
//    @State private var path: [Color] = [] // Nothing on the stack by default.
     @State private var path: [Color] = [.green, .mint] // try it with this

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                HStack {
                    Text("path =")
                    Text("\(path.description)")
                }
                Text("Insert anything here")
                    .font(.italic(.body)())
                Text("Here's what really matters:")
                    .font(.largeTitle)
                Text("Feed the $path")
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetail(color: color)
            }
        }
    }
}

struct AppleColorView_Previews: PreviewProvider {
    static var previews: some View {
        AppleColorView()
    }
}
