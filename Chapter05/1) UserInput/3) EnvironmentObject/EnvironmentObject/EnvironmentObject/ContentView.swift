//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by hanwe on 2021/01/02.
//

import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        Superview().environmentObject(User())
    }
}

struct Superview: View {
    var body: some View { SubView() }
}

struct SubView: View {
    @EnvironmentObject var user: User
    var body: some View {
        Text(user.name.description)
    }
}

class User: ObservableObject {
    let name = "User Name"
    @Published var score = 0
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
