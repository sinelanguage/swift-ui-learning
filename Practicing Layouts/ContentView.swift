//
//  ContentView.swift
//  Practicing Layouts
//
//  Created by Adam Winick on 2020-05-09.
//  Copyright © 2020 Adam Winick. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack() {
                Text("Milton")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Ontario")
                        .font(.subheadline)
                    Text("Canada").font(.subheadline)
                }
                
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
