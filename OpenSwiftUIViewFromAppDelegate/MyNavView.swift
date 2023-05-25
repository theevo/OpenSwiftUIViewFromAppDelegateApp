//
//  MyNavView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/25/23.
//

import SwiftUI

struct MyNavView: View {
    let numbers: [Int] = Array(1...25)
    
    var body: some View {
        NavigationStack {
            List(numbers, id: \.self, rowContent: { num in
                NavigationLink("Row \(num)", value: num)
            })
            .navigationDestination(for: Int.self, destination: { i in
                Text("Detail for \(i)")
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
