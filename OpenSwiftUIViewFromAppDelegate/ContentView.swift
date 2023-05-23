//
//  ContentView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appState = AppState.shared
    @State var navigate = false
    
    var pushNavigationBinding: Binding<Bool> {
        .init { () -> Bool in
            appState.navigateToView != nil
        } set: { (newValue) in
            if !newValue {
                appState.navigateToView = nil
            }
        }

    }
    
    var body: some View {
        NavigationView {
            Text("My content")
                .overlay(NavigationLink(destination:
                                            Dest(message: appState.navigateToView ?? ""),
                                        isActive: pushNavigationBinding) {
                    EmptyView()
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
