//
//  InitText.swift
//  Meme Generator
//
//  Created by ryekg on 2020-08-26.
//  Copyright © 2020 ryekg. All rights reserved.
//

import SwiftUI

struct InitText: View {
    private var imageText: String
    init(imageText: String) {
        self.imageText = imageText
    }
    var body: some View {
        Text(imageText.uppercased())
        .font(.custom("Impact", size: 20))
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .multilineTextAlignment(.center)
    }
}
