//
//  ColorDetail.swift
//  OpenSwiftUIViewFromAppDelegate
//
//  Created by Theo Vora on 5/23/23.
//

import SwiftUI

struct ColorDetail: View {
    var color: Color
    
    var body: some View {
        color.navigationTitle(color.description)
    }
}

struct ColorDetail_Previews: PreviewProvider {
    static var previews: some View {
        ColorDetail(color: .mint)
    }
}
