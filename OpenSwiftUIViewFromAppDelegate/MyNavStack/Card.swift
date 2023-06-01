//
//  Card.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 6/1/23.
//

import Foundation

struct Card {
    var prompt: String
    var answer: String
    
    static let sample = Card(prompt: "what?", answer: "yeah!")
    
    var route: Route {
        .card(card: self)
    }
}

extension Card: CustomStringConvertible {
    var description: String {
        "Card with prompt \(prompt)"
    }
}

extension Card: Hashable { }
