//
//  ContentView.swift
//  SweetSwiftUIStateAndBinding
//
//  Created by hanwe on 2021/01/02.
//

import SwiftUI

struct ContentView: View {
    @State private var isFavorite = true
    @State private var count = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Toggle(isOn: $isFavorite) { // $은 바인딩을 사용할때
                Text("isFavorite : \(isFavorite.description)")
            }
            Stepper("Count: \(count)", value: $count)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
