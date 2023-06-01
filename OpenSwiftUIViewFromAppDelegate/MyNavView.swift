//
//  MyNavView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/25/23.
//

import SwiftUI

/// It's just like `Colors` 😄🎨
enum Route {
    case settings
    case results
    case uhOh
}

extension Route: CustomStringConvertible {
    var description: String {
        switch self {
        case .settings:
            return "Settings"
        case .results:
            return "Results"
        case .uhOh:
            return "UhOh"
        }
    }
}

extension Route: View {
    var body: some View {
        switch self {
        case .settings:
            SettingsView()
        case .results:
            ResultsView()
        case .uhOh:
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
    let routes: [Route] = [.settings, .results]
    
    var body: some View {
        NavigationStack(path: $appState.routesOnStack) {
            List(routes, id: \.self, rowContent: { route in
                NavigationLink("\(route.description)", value: route)
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
