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
}

extension Card: CustomStringConvertible {
    var description: String {
        "Card with prompt \(prompt)"
    }
}

extension Card: Hashable { }
