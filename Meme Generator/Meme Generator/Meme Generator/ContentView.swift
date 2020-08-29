//
//  ContentView.swift
//  Meme Generator
//
//  Created by ryekg on 2020-08-24.
//  Copyright © 2020 ryekg. All rights reserved.
//

import SwiftUI

struct Meme:Identifiable {
    var id = UUID()
    var title : String
    var memeName : String
}

var memeData = [
    Meme(title: "Spongebob Meme", memeName: "SpongeBobMeme"),
    Meme(title: "Black meme", memeName: "yo_dawg"),
    Meme(title: "Random meme", memeName: "memes-10"),
    Meme(title: "Message bubble", memeName: "Left"),
    Meme(title: "Asian father", memeName: "high_expectations_asian_father"),
    Meme(title: "Bad luck brian", memeName: "bad_luck_brian"),
    Meme(title: "3 days later", memeName: "3_days_later_4"),
    Meme(title: "TTC", memeName: "TTMeme")
]

struct ContentView: View {
    
    var memes = memeData
    var body: some View {
        NavigationView {
            List(memes) { meme in
                NavigationLink(destination: MainMeme(imageName: meme.memeName)) {
                    HStack {
                        Image(meme.memeName)
                            .resizable()
                            .frame(width: 100.0, height: 100.0)
                        VStack {
                            Text(meme.title)
                        }
                    }
                }
            }
        .navigationBarTitle("Choose your meme")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
