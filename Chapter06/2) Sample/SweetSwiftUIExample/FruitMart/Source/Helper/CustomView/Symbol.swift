//
//  Symbol.swift
//  FruitMart
//
//  Created by hanwe lee on 2021/01/21.
//  Copyright © 2021 Giftbot. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct Symbol: View {
    let systemName: String
    let imageScale: Image.Scale
    let color: Color?
    
    init(_ systemName: String, scale imageScale: Image.Scale = .medium, color: Color? = nil) {
        self.systemName = systemName
        self.imageScale = imageScale
        self.color = color
    }
    
    var body: some View {
        Image(systemName: systemName)
            .imageScale(self.imageScale)
            .foregroundColor(self.color)
    }
    
}


