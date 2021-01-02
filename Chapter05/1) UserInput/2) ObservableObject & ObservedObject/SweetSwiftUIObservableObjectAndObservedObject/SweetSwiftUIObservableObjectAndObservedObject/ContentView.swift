//
//  ContentView.swift
//  SweetSwiftUIObservableObjectAndObservedObject
//
//  Created by hanwe on 2021/01/02.
//

import SwiftUI
import Combine

struct ContentView: View {
    @ObservedObject var user: User
    
    var body: some View {
        VStack(spacing: 30) {
            Text(user.name)
            
            Button(action: { self.user.score += 1 ; print(user.score.description) }) {
                Text("\(user.score.description)")
            }
        }
    }
}

//class User: ObservableObject {
//    let name = "User Name"
//    @Published var score = 0
//}

class User: ObservableObject {
    let name = "User Name"
    let objectWillChange: ObservableObjectPublisher = ObservableObjectPublisher()
    var score = 0 {
        willSet {
            objectWillChange.send() //@Published와 동일
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(user: User())
    }
}
