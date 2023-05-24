//
//  OpenSwiftUIViewFromAppDelegateApp.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import SwiftUI

@main
struct OpenSwiftUIViewFromAppDelegateApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            DeprecatedNavigationView()
        }
    }
}
