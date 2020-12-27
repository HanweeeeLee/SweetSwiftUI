//
//  ContentView.swift
//  SweetSwiftUINavigationView
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let leadingItem = Button(action: { print("Leading item tapped") }, label: {
            Image(systemName: "bell").imageScale(.large)
            // iOS 13.4 미만에서는 뒤로가기버튼을 덮어버리는 버그가 있다고 함 ㅡㅡ;
        })
        let trailingItem = HStack {
            Button(action: { print("Trailing") }, label: {
                Image(systemName: "gear").imageScale(.large)
            })
            Button(action: { print("Trailing") }, label: {
                Image(systemName: "heart").imageScale(.large)
            })
        }
        return NavigationView {
            NavigationLink(destination: Text("Destination View")) {
                Image("tomato")
                    .renderingMode(.original) //렌더링 모드 설정
                    .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                    .navigationBarTitle("내비게이션 바 타이틀", displayMode: .large)
                //  .navigationBarTitle("내비게이션 바 타이틀", displayMode: .inline)  //이런식으로 옵션을 줄 수 있음
//                    .navigationBarHidden(true) 히든 시킬 수 있다.
//                    .navigationBarBackButtonHidden(true) 이것도 히든 시킬 수 있다.
            }
//            .buttonStyle(PlainListStyle()) // 버튼 스타일 설정
            
        }
//        .navigationBarTitle("내비게이션 바 타이틀", displayMode: .large) 이런식으로 밖에 넣어주는 실수를 하지 말자
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
