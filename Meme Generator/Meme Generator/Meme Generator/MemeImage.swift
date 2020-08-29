//
//  MemeImage.swift
//  Meme Generator
//
//  Created by ryekg on 2020-08-24.
//  Copyright © 2020 ryekg. All rights reserved.
//

import SwiftUI

struct MemeImage: View {
    private var rawImage: UIImage
    private var imageName: String
    private var topMemeText: String
    private var bottomMemeText: String
    init(imageName: String, topMemeText: String, bottomMemeText: String) {
        self.imageName = imageName
        self.topMemeText = topMemeText
        self.bottomMemeText = bottomMemeText
        self.rawImage = UIImage(named: imageName)!
    }
    
    var body: some View {
        Image(uiImage: rawImage)
            .resizable()
            .scaledToFit()
            .overlay(InitText(imageText: topMemeText), alignment: .top)
            .overlay(InitText(imageText: bottomMemeText), alignment: .bottom)
    }
    
    func saveImage() {
        let imageSaver = ImageSaver()
        imageSaver.writeToPhotoAlbum(image: self.rawImage)
    }
}

struct MemeImage_Previews: PreviewProvider {
    static var previews: some View {
        MemeImage(imageName: "yo_dawg", topMemeText: "", bottomMemeText: "")
    }
}
