//
//  ContentView.swift
//  SweetSwiftUIFixProperty
//
//  Created by hanwe on 2021/01/02.
//

import SwiftUI

//Cannot assign to property: 'self' is immutable
//struct ContentView: View {
//    var framework: String = "UIKit"
//    var body: some View {
//        Button(framework) {
//            self.framework = "SwiftUI"
//        }
//    }
//}

//Type 'ContentView' does not conform to protocol 'View'
//struct ContentView: View {
//    var framework: String = "UIKit"
//    var body: some View {
//        mutating get {
//            Button(framework) {
//                self.framework = "SwiftUI"
//            }
//        }
//    }
//}

struct ContentView: View {
    @State private var framework: String = "UIKit"
    var body: some View {
        Button(framework) {
            self.framework = "SwiftUI"
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
