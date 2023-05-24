//
//  SwiftUI - Open a specific View when user opens a Push Notification
//
//  https://stackoverflow.com/questions/66283978/swiftui-open-a-specific-view-when-user-opens-a-push-notification
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
