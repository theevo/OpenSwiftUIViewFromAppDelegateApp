//
//  Route.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 6/1/23.
//

import Foundation

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

extension Route: Hashable { }
