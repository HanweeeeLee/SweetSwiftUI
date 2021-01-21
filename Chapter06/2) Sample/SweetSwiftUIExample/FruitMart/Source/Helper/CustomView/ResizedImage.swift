//
//  ResizedImage.swift
//  FruitMart
//
//  Created by hanwe lee on 2021/01/21.
//  Copyright © 2021 hanwe. All rights reserved.
//

import Foundation
import SwiftUI

struct ResizedImage: View {
    let imageName: String
    let contentMode: ContentMode
    let renderingMode: Image.TemplateRenderingMode?
    
    init(_ imageName: String, contentMode: ContentMode, redneringMode: Image.TemplateRenderingMode) {
        self.imageName = imageName
        self.contentMode = contentMode
        self.renderingMode = redneringMode
    }
    
    var body: some View {
        Image(imageName)
            .renderingMode(self.renderingMode)
            .resizable()
            .aspectRatio(contentMode: self.contentMode)
    }
    
    
    
    
}
