//
//  AppState.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import Foundation

class AppState: ObservableObject {
    static let shared = AppState()
    @Published var navigateToView: String?
}

class AppStateUsingRoutes: ObservableObject {
    static let shared = AppStateUsingRoutes()
    @Published var routesOnStack: [Route] = []
}
