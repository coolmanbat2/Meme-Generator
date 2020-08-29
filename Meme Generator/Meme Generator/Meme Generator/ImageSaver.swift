//
//  ImageSaver.swift
//  Meme Generator
//
//  Created by ryekg on 2020-08-27.
//  Copyright © 2020 ryekg. All rights reserved.
//

import SwiftUI

class ImageSaver: NSObject {
    private var isSaved = false
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveError), nil)
    }

    @objc func saveError(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        isSaved = true
    }
}
