//
//  MyNavView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/25/23.
//

import SwiftUI

/// It's just like `Colors` 😄🎨
enum Route: String, Hashable {
    case Settings
    case Results
    case UhOh
}

extension Route: View {
    var body: some View {
        switch self {
        case .Settings:
            SettingsView()
        case .Results:
            ResultsView()
        case .UhOh:
            UhOhView(errorText: "404")
        }
    }
}

struct ResultsView: View {
    var body: some View {
        Text("Greetings, Program. You are viewing Results. 🔢")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Welcome to Settings, Tron 🥏")
    }
}

struct UhOhView: View {
    var errorText: String
    var body: some View {
        VStack {
            Text("DM a screenshot of this for a coupon code @theevo@iosdev.space")
            Text("Error: \(errorText)")
        }
        .navigationTitle("Uh oh!")
    }
}

struct MyNavView: View {
    @ObservedObject var appState = AppStateUsingRoutes.shared
    let routes: [Route] = [.Settings, .Results]
    
    var body: some View {
        NavigationStack(path: $appState.routesOnStack) {
            List(routes, id: \.self, rowContent: { route in
                NavigationLink("\(route.rawValue)", value: route)
            })
            .navigationDestination(for: Route.self, destination: { route in
                route.body
            })
            .navigationTitle("My routes")
        }
    }
}

struct MyNavView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavView()
    }
}
