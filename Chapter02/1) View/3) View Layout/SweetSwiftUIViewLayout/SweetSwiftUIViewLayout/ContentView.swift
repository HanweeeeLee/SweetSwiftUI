//
//  ContentView.swift
//  SweetSwiftUIViewLayout
//
//  Created by hanwe on 2020/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
            Text("SwiftUI")
            HStack { // 이 부분만 HStack, VStack, ZStack으로 수정해 봅니다.
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 150, height: 150)
                ZStack {
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 150, height: 150)
                        .offset(x: 40, y: 40) //각각 x축과 y축으로 40포인트 이동
                }
            }
            HStack {
                Text("HStack").font(.title).foregroundColor(Color.blue)
                Text("은 뷰를 가로로 배열합니다.")
                Text("!")
            }
            .padding()
            .border(Color.black) // 여백을 확보하고 검은색 테두리 그리기
            
            //Spacer
//            HStack { Spacer().background(Color.blue)} //출력되는 내용 없음
//            Spacer().background(Color.blue) // 공간 최대 확장. 시각적 요소 표현 가능
            HStack {
                Spacer().frame(width: 100)
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            VStack { //HStack, ZStack을 변경하여 비교
                Spacer()
                Text("Spacer").font(.title).background(Color.yellow)
            }.background(Color.blue)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
