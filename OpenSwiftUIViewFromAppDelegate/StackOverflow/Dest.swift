//
//  SwiftUI - Open a specific View when user opens a Push Notification
//
//  https://stackoverflow.com/questions/66283978/swiftui-open-a-specific-view-when-user-opens-a-push-notification
//

import SwiftUI

struct Dest: View {
    var message: String
    var body: some View {
        Text("\(message)")
    }
}

struct Dest_Previews: PreviewProvider {
    static var previews: some View {
        Dest(message: "hola amigos")
    }
}
