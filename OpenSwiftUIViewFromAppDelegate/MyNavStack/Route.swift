//
//  Route.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 6/1/23.
//

import SwiftUI // i'd rather this model only import Foundation

enum Route {
    case card(card: Card)
    case settings
    case results
    case uhOh
}

extension Route: CustomStringConvertible {
    var description: String {
        switch self {
        case .card:
            return "A card"
        case .settings:
            return "Settings"
        case .results:
            return "Results"
        case .uhOh:
            return "UhOh"
        }
    }
}

// TODO: - can this be a RouteView instead????
extension Route: View {
    var body: some View {
        switch self {
        case .card(let card):
            CardView(card: card)
        case .settings:
            SettingsView()
        case .results:
            ResultsView()
        case .uhOh:
            UhOhView(errorText: "404")
        }
    }
}

extension Route: Hashable { }
