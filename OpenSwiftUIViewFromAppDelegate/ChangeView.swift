//
//  ChangeView.swift
//  This allows sharing of data between views within a Navigation Stack
//
//  https://www.hackingwithswift.com/articles/216/complete-guide-to-navigationview-in-swiftui
//

import SwiftUI

class User: ObservableObject {
    @Published var score = 0
}

struct NavChangeView: View {
    @StateObject var user = User()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Score: \(user.score)")
                NavigationLink(destination: ChangeView()) {
                    Text("Show Detail View")
                }
            }
            .navigationTitle("Navigation")
        }
        .environmentObject(user)
    }
}

struct ChangeView: View {
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            Text("Score: \(user.score)")
            Button("Increase") {
                self.user.score += 1
            }
        }
    }
}

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        NavChangeView()
    }
}
