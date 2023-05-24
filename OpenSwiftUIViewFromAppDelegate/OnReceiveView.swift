//
//  OnReceiveView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/24/23.
//

import SwiftUI

struct OnReceiveView: View {
    @ObservedObject var appState = AppState.shared
    @State var navigate = false
    
    var body: some View {
        NavigationView {
            VStack {
                switch navigate {
                case true:
                    NavigationLink( // init(destination:isActive:label:) deprecated
                        destination:
                            Text(appState.navigateToView ?? ""),
                        isActive: $navigate) {
                        EmptyView()
                    }
                case false:
                    Text("My content")
                        .onReceive(appState.$navigateToView) { (nav) in // janky. it doesn't animate
                            if nav != nil { navigate = true }
                        }
                }
            }
        }
    }
}

struct OnReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        OnReceiveView()
    }
}
