//
//  ContentView.swift
//  SweetSwiftUIDynamicContentsRange
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0..<100) {
            Text("\($0)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
