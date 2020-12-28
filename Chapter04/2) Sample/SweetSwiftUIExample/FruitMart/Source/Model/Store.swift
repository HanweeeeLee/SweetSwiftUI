//
//  Store.swift
//  FruitMart
//
//  Created by hanwe on 2020/12/28.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import Foundation

final class Store {
    var products: [Product]
    
    init(fileName: String = "ProductData.json") {
        self.products = Bundle.main.decode(fileName: fileName, as: [Product].self)
    }
}
