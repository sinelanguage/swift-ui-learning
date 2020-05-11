//
//  CircleImage.swift
//  Practicing Layouts
//
//  Created by Adam Winick on 2020-05-09.
//  Copyright © 2020 Adam Winick. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Milton")
            .resizable()
            .scaledToFill()
            .frame(width: 300.0, height: 300.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color(red: 0.95, green: 0.95, blue: 0.95, opacity: 1.0), lineWidth: 10))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
