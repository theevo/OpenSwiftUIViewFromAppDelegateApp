//
// Migrating to new navigation types
// From Apple
//
// https://developer.apple.com/documentation/swiftui/migrating-to-new-navigation-types
//

import SwiftUI

struct ColorDetail: View {
    var color: Color
    
    var body: some View {
        color.navigationTitle(color.description)
    }
}

struct ColorDetail_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetail(color: .mint)
    }
}
