//
//  DeprecatedNavigationView.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import SwiftUI

struct DeprecatedNavigationView: View {
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
        NavigationView { // deprecated
            Text("My content")
                .overlay(
                    NavigationLink( // init(destination:isActive:label:) deprecated
                        destination:
                            Dest(message: appState.navigateToView ?? ""),
                        isActive: pushNavigationBinding) {
                            EmptyView()
                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeprecatedNavigationView()
    }
}
