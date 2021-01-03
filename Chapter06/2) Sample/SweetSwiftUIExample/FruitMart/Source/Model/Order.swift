//
//  Order.swift
//  FruitMart
//
//  Created by hanwe on 2021/01/03.
//  Copyright © 2021 Giftbot. All rights reserved.
//

import SwiftUI
import Foundation

struct Order: Identifiable {
    static var orderSequence = sequence(first: 1) { $0 + 1 }
    
    let id: Int
    var product: Product
    let quantity: Int
    
    var price: Int {
        product.price * quantity
    }
}
