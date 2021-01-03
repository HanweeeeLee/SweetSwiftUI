//
//  ProductRow.swift
//  FruitMart
//
//  Created by hanwe on 2020/12/26.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    
    var body: some View {
        HStack {
            //상품 이미지
            productImage
            productDescription
        }
        .frame(height: 150)
        .background(Color.primary.colorInvert())
        .cornerRadius(6)
        .shadow(color: Color.primaryShadow, radius: 1, x: 2, y: 2)// 그림자 효과는 1. 뷰의 배경색을 불투명한 색으로 지정하고, 2. 이미 작성한 수식어들의 효과를 먼저 반영시킨뒤 적용해야한다. 그렇지 않으면 의도하지 않은대로 나옴
        .padding(.vertical, 8)
    }
}

private extension ProductRow {
    var productImage: some View {
        Image(product.imageName)
            .resizable()
            .scaledToFill()
            .frame(width: 140)
            .clipped()
    }

    var productDescription: some View {
        VStack(alignment: .leading) { //정렬기준 변경
            // 상품명
            Text(product.name)
                .font(.headline)
                .fontWeight(.medium)
                .padding(.bottom, 6)
            // 상품 설명
            
            Text(product.description)
                .font(.footnote)
                .foregroundColor(Color.secondary)
            Spacer()
            footerView
        }
        .padding([.leading, .bottom], 12)
        .padding([.top, .trailing])
    }

    var footerView: some View {
        HStack(spacing: 0) { // HStack이 가진 자식 뷰 사이의 간격을 0으로 지정
            //가격 정보와 버튼
            Text("₩").font(.footnote) //가격정보
                + Text("\(product.price)").font(.headline)
            Spacer()
            //                    EmptyView() //어떠한 내용도 없는 뷰. StackView안에 뭐라도 들어가야하는데 넣을게 없을떄 넣는다.
            FavoriteButton(product: product)
            
            Image(systemName: "cart") //카트 아이콘
                .foregroundColor(Color.peach)
                .frame(width: 32, height: 32)
            
        }
    }
}


struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(productSamples) {
                ProductRow(product: $0)
            }
            ProductRow(product: productSamples[0])
                .preferredColorScheme(.dark) // 다크모드 설정
        }
        .padding()
        .previewLayout(.sizeThatFits)
    }
}
