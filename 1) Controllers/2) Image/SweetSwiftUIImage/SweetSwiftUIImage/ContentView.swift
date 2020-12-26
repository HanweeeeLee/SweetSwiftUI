//
//  ContentView.swift
//  SweetSwiftUIImage
//
//  Created by hanwe on 2020/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image("tomato")
//            Image("tomato").frame(width: 50, height: 50, alignment: .center) // 이런식으로 적용하면 이미지의 크기는 변하지않고 나타내는 위치만 달라진다.
            Image("tomato").resizable()
                .frame(width: 50, height: 50, alignment: .center)// 요런식으로 적용해야함
            HStack {
                Image("tomato")
                    // capInset 매개 변수에 늘어날 영역 지정. resizingMode 생략 시 stretch 적용
                    .resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0))
                    .frame(width: 150, height: 150, alignment: .center)
                
                Image("tomato")
                    .resizable(resizingMode: .tile)
                    .frame(width: 150, height: 150, alignment: .center)
            }
            // ContentMode
            HStack {
                //UIKit의 Scale to Fill이 기본값으로 적용
                Image("tomato").resizable().frame(width: 50, height: 100)
                
                Image("tomato").resizable()
                    .scaledToFit() //UIKit의 Aspect Fit 효과 적용
                    .frame(width: 50, height: 100)
                
                Image("tomato").resizable()
                    .scaledToFill() // UIKit의 Aspect Fill 효과 적용
                    .frame(width: 50, height: 100)
                    .clipped() // UIView의 ClipsToBounds 활성화 효과. 프레임을 벗어나는 이미지 제거
            }
            
            //AspectRatio
            HStack(spacing: 30) {
                //scaledToFit 콘텐츠 모드를 적용한 뒤, 너비가 높이보다 1.6배의 비율을 가지도록 조정
                Image("tomato").resizable()
                    .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
                    .frame(width: 150, height: 150)
                
                //scaledToFill 콘텐츠 모드를 적용한 뒤 너비가 높이보다 0.7배의 비율을 가지도록 조정
                Image("SwiftUI").resizable()
                    .aspectRatio(0.7,  contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
            }
            
            
            //ClipShape
            HStack(spacing : 20) {
                Image("tomato").clipShape(Circle()) //원
                Image("tomato").clipShape(
                    Rectangle().inset(by: 10) // 이미지 크기보다 사방으로 10씩 크기를 줄인 사각형
                )
                Image("tomato").clipShape(
                    //크기와 위치를 직접 지정한 타원
                    Ellipse().path(in: CGRect(x: 10, y: 10, width: 80, height: 110))
                )
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
