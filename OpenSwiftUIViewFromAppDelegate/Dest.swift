//
//  Dest.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
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
