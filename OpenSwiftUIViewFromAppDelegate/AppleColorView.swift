//
//  AppleColorView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import SwiftUI

struct AppleColorView: View {
    @State private var path: [Color] = [] // Nothing on the stack by default.
    // @State private var path: [Color] = [.green, .mint] // try it with this

    var body: some View {
        NavigationStack(path: $path) {
            List {
                NavigationLink("Purple", value: Color.purple)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Orange", value: Color.orange)
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
