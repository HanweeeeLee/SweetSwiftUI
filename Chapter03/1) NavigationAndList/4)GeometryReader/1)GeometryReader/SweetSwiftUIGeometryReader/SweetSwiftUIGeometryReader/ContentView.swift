//
//  ContentView.swift
//  SweetSwiftUIGeometryReader
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        GeometryReader { _ in
//            Circle().fill(Color.purple)
//                .frame(width: 200, height: 200)
//                .overlay(Text("Center").font(.title)) // 오버레이 뷰는 무관
//        }.background(Color.gray)
        
        GeometryReader { _ in
            Circle().fill(Color.blue)
                .frame(width: 350, height: 350)
            Circle().fill(Color.orange)
                .frame(width: 280, height: 280)
            Circle().fill(Color.purple)
                .frame(width: 200, height: 200)
            Text("TopLeading").font(.title)
        }.background(Color.gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
