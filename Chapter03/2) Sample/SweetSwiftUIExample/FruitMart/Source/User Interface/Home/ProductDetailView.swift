//
//  ProductDetailView.swift
//  FruitMart
//
//  Created by hanwe on 2020/12/28.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product // 상품 정보를 전달받기 위한 프로퍼티 선언
    
    var body: some View {
        VStack(spacing: 0) {
            productImage // 상품 이미지
            orderView // 상품 정보를 출력하고 그 상품을 주문하기 위한 뷰
        }
        .edgesIgnoringSafeArea(.top) //세이프티 에이리어 무시
    }
    
    var productImage: some View {
        GeometryReader { _ in
            Image(self.product.imageName)
                .resizable()
                .scaledToFill()
        }
    }
    
    var orderView: some View { // 상품 설명과 주문하기 버튼 등을 모두 포함하는 컨테이너
        GeometryReader {
            VStack(alignment: .leading) {
                self.productDescription // 상품명과 즐겨찾기 버튼(하트모양) 이미지
                Spacer()
                self.priceInfo // 가격정보
                self.placeOrderButton // 주문하기 버튼
            }
            // 지오메트리리더가 차지하는 뷰의 높이보다 VStack의 높이가 10 크도록 지정
            .frame(height: $0.size.height + 10)
            .padding(32)
            .background(Color.white) // 다크 모드에서도 흰색 배경을 사용하기 위해 white 지정
            .cornerRadius(16)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: -5)
        }
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text(product.name) // 상품명
                    .font(.largeTitle).fontWeight(.medium)
                    .foregroundColor(.black)
                Spacer()

                Image(systemName: "heart") // 즐겨찾기 버튼
                    .imageScale(.large)
                    .foregroundColor(Color.peach)
                    .frame(width: 32, height: 32)
            }
            
            Text(splitText(product.description))
                .foregroundColor(.secondaryText)
                .fixedSize()
        }
    }
    
    func splitText(_ text: String) -> String {
        guard !text.isEmpty else { return text }
        let centerIdx = text.index(text.startIndex, offsetBy: text.count / 2)
        let centerSpaceIdx = text[..<centerIdx].lastIndex(of: " ")
            ?? text[centerIdx...].firstIndex(of: " ")
            ?? text.index(before: text.endIndex)
        let afterSpaceIdx = text.index(after: centerSpaceIdx)
        let lhsString = text[..<afterSpaceIdx].trimmingCharacters(in: .whitespaces)
        let rhsString = text[afterSpaceIdx...].trimmingCharacters(in: .whitespaces)
        return String(lhsString + "\n" + rhsString)
    }
    
    var priceInfo: some View {
      HStack {
        (Text("₩")
          + Text("\(product.price)").font(.title)
          ).fontWeight(.medium)
        Spacer()
      }
      .foregroundColor(.black)
    }
    
    var placeOrderButton: some View { //주문하기 버튼
        Button(action: { }) {
            Capsule()
                .fill(Color.peach)
                //너비는 주어진 공간을 최대로 사용하고 높이는 최소, 최대치 지정
                .frame(maxWidth: .infinity, minHeight: 30, maxHeight: 55)
                .overlay(Text("주문하기")
                            .font(.system(size: 20)).fontWeight(.medium)
                            .foregroundColor(Color.white))
                .padding()
        }
    }
    
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productSamples[0])
    }
}
