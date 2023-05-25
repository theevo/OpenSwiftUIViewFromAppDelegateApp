//
//  MyNavView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/25/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Welcome to Settings")
    }
}

struct MyNavView: View {
    @State private var onTheStack: [Int] = [0]
    let numbers: [Int] = Array(1...25)
    
    var body: some View {
        NavigationStack(path: $onTheStack) {
            List(numbers, id: \.self, rowContent: { num in
                NavigationLink("Row \(num)", value: num)
            })
            .navigationDestination(for: Int.self, destination: { i in
                switch i {
                case 0:
                    SettingsView()
                default:
                    Text("Detail for \(i)")
                }
            })
            .navigationTitle("A bunch of numbers")
        }
    }
}

struct MyNavView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavView()
    }
}
