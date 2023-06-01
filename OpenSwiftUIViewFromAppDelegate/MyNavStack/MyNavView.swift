//
//  MyNavView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/25/23.
//

import SwiftUI

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
