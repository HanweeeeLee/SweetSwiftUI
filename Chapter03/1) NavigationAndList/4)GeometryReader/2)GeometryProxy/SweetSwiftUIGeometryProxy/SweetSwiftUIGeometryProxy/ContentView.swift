//
//  ContentView.swift
//  SweetSwiftUIGeometryProxy
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            Text("Geometry Reader")
                .font(.largeTitle).bold()
            // posision은 뷰의 센터 위치를 지정하는 수식어
                .position(x: geometry.size.width / 2,       //지오메트리 리더 너비의 절반
                          y: geometry.safeAreaInsets.top)   //상단 안전 영역의 크기
            
            VStack {
                Text("Size").bold()
                //지오메트리 리더 너비 표시
                Text("width : \(Int(geometry.size.width))")
                // 지오메트리 리더 높이 표시
                Text("height : \(Int(geometry.size.height))")
            }
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.5)
            
            VStack {
                Text("safeAreaInsets").bold()
                //상단 안전 영역의 크기
                Text("top : \(Int(geometry.safeAreaInsets.top))") // 이게 왜 안잡히지???
                //하단 안전 영역의 크기
                Text("bottom : \(Int(geometry.safeAreaInsets.bottom))")
            }
            .position(x: geometry.size.width / 2, y: geometry.size.height / 1.4)
        }
        .font(.title)
        .frame(height: 500) // 지오메트리 리더의 높이 500으로 고정
        .border(Color.green, width: 5) //지오메트리 리더 외곽선
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
