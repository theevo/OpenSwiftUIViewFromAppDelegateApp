//
//  SwiftUI - Open a specific View when user opens a Push Notification
//
//  https://stackoverflow.com/questions/66283978/swiftui-open-a-specific-view-when-user-opens-a-push-notification
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
