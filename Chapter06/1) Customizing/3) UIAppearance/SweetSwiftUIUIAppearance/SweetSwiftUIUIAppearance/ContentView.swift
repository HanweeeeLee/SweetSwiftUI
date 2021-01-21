//
//  ContentView.swift
//  SweetSwiftUIUIAppearance
//
//  Created by hanwe lee on 2021/01/21.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State private var isOn = true
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!!!!!")
                // 디스플레이 모드 매개 변수 생략 시 large
                Toggle(isOn: $isOn) {
                    Text("UISwitch에 대한 색 변경")
                }
                
            }
            .navigationTitle("UIAppearance")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
