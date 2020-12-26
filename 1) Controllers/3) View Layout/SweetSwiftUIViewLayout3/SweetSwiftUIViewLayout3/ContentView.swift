//
//  ContentView.swift
//  SweetSwiftUIViewLayout3
//
//  Created by hanwe on 2020/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Overlay
            Rectangle().fill(Color.green).frame(width: 150, height: 150)
                .overlay( //초록색 사각형 위로 뷰 추가
                    Rectangle().fill(Color.yellow) // 크기를 정해 주지 않으면 초록색 사각형과 동일 크기
                )
            
            //background
            Rectangle().fill(Color.yellow).frame(width: 150, height: 150)
                .background( // 노란색 사각형 아래에 새로운 뷰 추가
                    Rectangle().fill(Color.green) // overlay코드와 색이 반대가 된 것을 주목
                )
            
            //Alignment
            Circle()
                .fill(Color.yellow.opacity(0.8)) // 배경으로 추가된 뷰를 볼 수 있도록 투명도 설정
                .frame(width: 250, height: 250)
                //overlay
                .overlay(Text("Joystick").font(.largeTitle))
                .overlay(Image(systemName: "arrow.up").font(.title).padding(), alignment: .top)
                .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
                .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title).padding(), alignment: .topTrailing)
                //background
                .background(Image(systemName: "arrow.down").font(.title).padding(), alignment: .bottom)
                .background(Image(systemName: "arrow.right").font(.title).padding(), alignment: .trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
