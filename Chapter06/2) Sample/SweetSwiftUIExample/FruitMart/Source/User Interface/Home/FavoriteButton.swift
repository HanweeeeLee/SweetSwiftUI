//
//  FavoriteButton.swift
//  FruitMart
//
//  Created by hanwe on 2021/01/03.
//  Copyright © 2021 Giftbot. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @EnvironmentObject private var store: Store
    let product: Product
    
    private var imageName: String {
        product.isFavorite ? "heart.fill": "heart" //즐겨찾기 여부에 따라 심벌 변경
    }
    
    var body: some View {
//        Button(action: {
//            self.store.toggleFavorite(of: self.product)
//        }) {
//            Image(systemName: imageName)
//                .imageScale(.large)
//                .foregroundColor(.peach)
//                .frame(width: 32, height: 32)
//        }
        Symbol(product.isFavorite ? "heart.fill" : "heart",scale: .large,color: .peach)
            .frame(width: 32, height: 32)
            .onTapGesture { self.store.toggleFavorite(of: self.product) }
    }
}

//struct FavoriteButton_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteButton(product: Product(from: <#Decoder#>))
//    }
//}
