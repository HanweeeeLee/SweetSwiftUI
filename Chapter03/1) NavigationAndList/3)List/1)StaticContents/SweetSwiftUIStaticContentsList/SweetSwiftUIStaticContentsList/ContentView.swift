//
//  ContentView.swift
//  SweetSwiftUIStaticContentsList
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("List").font(.largeTitle)
            Image("tomato")
            Circle().frame(width: 100, height: 100)
            Color(.red).frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
