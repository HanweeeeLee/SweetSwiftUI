//
//  ContentView.swift
//  SweetSwiftUIIdealSizeOrFixedSize
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
//        // fixedSize 미적용
//        VStack {
//            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
//            Rectangle()
//            Color.red
//            Image("tomato").resizable()
//        }
//
//        //fixedSize 적용
//
//        VStack {
//            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30)
//                .fixedSize()
//            Rectangle().fixedSize()
//            Color.red.fixedSize()
//            Image("tomato").resizable().fixedSize()
//
//        }
//
        VStack(spacing: 100) {
            Group { // 자식 뷰에 공통으로 동일한 수식어를 적용하고 싶을 떄 Group 활용 가능
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.")
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: true, vertical: false) // 가로축에만 적용
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: false, vertical: true) // 세로축에만 적용
            }
            .font(.title)
            .frame(width: 150, height: 40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
