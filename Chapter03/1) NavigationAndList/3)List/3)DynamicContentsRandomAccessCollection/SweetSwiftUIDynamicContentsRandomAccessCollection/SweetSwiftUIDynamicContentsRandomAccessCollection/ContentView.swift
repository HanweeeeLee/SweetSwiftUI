//
//  ContentView.swift
//  SweetSwiftUIDynamicContentsRandomAccessCollection
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(["A","B","C","D","E"], id: \.self) {
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
