//
//  Subviews.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 6/1/23.
//

import SwiftUI

struct CardView: View {
    var card: Card
    var body: some View {
        VStack {
            Text(card.prompt)
            Text(card.answer)
        }
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Welcome to Settings, Tron 🥏")
    }
}

struct ResultsView: View {
    var body: some View {
        Text("Greetings, Program. You are viewing Results. 🔢")
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
