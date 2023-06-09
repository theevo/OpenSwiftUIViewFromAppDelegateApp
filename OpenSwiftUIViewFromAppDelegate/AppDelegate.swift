//
//  AppDelegate.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import UIKit
import UserNotifications

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("✈️ Dispatching")
            let card = Card(prompt: "Joker 🃏", answer: "because I'm not batman")
            AppStateUsingRoutes.shared.routesOnStack = [.card(card: card)]
        }
        
        return true
    }
}
