//
//  ContentView.swift
//  SweetSwiftUIFixOrFlexible
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            // - minWidth vs maxWidth
            Rectangle().fill(Color.red).frame(minWidth: 100) //최소너비 100
            Rectangle().fill(Color.orange).frame(maxWidth: 15) //최대 너비 15
            
            // - height vs maxHeight
            Rectangle().fill(Color.yellow).frame(height: 150) //높이 150 고정
            Rectangle().fill(Color.green).frame(maxHeight: .infinity) // 최대한의 높이 설정
            
            // - .infinity
            Rectangle().fill(Color.blue) //가능한 최대 너비와 높이 사용
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Rectangle().fill(Color.purple) //양방향으로 infinity 한 것과 동일
        }
        .frame(width: 300, height: 150)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
