//
//  ContentView.swift
//  SweetSwiftUIDynamicStaticMixList
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

//struct ContentView: View {
//    let fruits = ["사과","배","포도","바나나"]
//    let drinks = ["물","우유","탄산수"]
//    var body: some View {
//        List {
//            Text("Fruits").font(.largeTitle)
//            ForEach(fruits, id: \.self) {
//                Text($0)
//            }
//            Text("Drinks").font(.largeTitle)
//            ForEach(drinks, id: \.self) {
//                Text($0)
//            }
//        }
//    }
//}

struct ContentView: View {
    let fruits = ["사과","배","포도","바나나"]
    let drinks = ["물","우유","탄산수"]
    var body: some View {
        let titles = ["Fruits","Drinks"]
        let data = [fruits, drinks]
        return List {
            ForEach(data.indices) { index in //data에 포함된 횟수만큼 섹션 생성
                Section(
                    header: Text(titles[index]).font(.title), //헤더
                    footer: HStack { Spacer(); Text("\(data[index].count)건")} // 푸터
                ) {
                    ForEach(data[index], id: \.self) {
                        Text($0)
                    }
                }
            }
        }
//        .listStyle(GroupedListStyle) ?
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
