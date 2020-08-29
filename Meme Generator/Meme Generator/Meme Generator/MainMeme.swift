//
//  MainMeme.swift
//  Meme Generator
//
//  Created by ryekg on 2020-08-24.
//  Copyright © 2020 ryekg. All rights reserved.
//

import SwiftUI

struct MainMeme: View {
    private var imageName :String
    @State private var topMemeText = ""
    @State private var bottomMemeText = ""
    init(imageName :String) {
        self.imageName = imageName
    }
    
    var body: some View {
        VStack(spacing: 15.0) {
            TextField("meme text #1 \n lsdkjf", text: $topMemeText)
                .padding(0.0)
                .frame(width: 300.0)
            VStack {
                MemeImage(imageName: imageName, topMemeText: topMemeText, bottomMemeText: bottomMemeText)
                    .padding()
                    .frame(width: 350.0)
            }
            TextField("meme text #2", text: $bottomMemeText)
                .padding(0.0)
                .frame(width: 300.0, height: 10.0)
            HStack(spacing: 80.0) {
                Button(action: {
                    self.bottomMemeText = ""
                    self.topMemeText = ""
                }) {
                    Text("Reset")
                }
            }
            .padding(.top, 20.0)
            
        }
        .scaledToFill()
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 300, height: 10)
    }
}

struct MainMeme_Previews: PreviewProvider {
    static var previews: some View {
        MainMeme(imageName: "yo_dawg")
    }
}
