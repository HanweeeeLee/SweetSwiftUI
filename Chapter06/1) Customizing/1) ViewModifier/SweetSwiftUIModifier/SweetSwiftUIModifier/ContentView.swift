//
//  ContentView.swift
//  SweetSwiftUIModifier
//
//  Created by hanwe on 2021/01/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .modifier(CustomViewModifier(borderColor: .blue)) // 적용방법 1
                .padding()
            
            // 적용방법 2
            ModifiedContent(content: Text("Custom ViewModifier"),
                            modifier: CustomViewModifier(borderColor: .blue))
                .padding()
            
            //concat
            Text("concat")
                .modifier(MyModifier1().concat(MyModifier2()))
                .padding()
            
            //extension
            Text("extension")
                .customModifierExtension(borderColor: .orange)
        }
    }
}

struct CustomViewModifier: ViewModifier {
    var borderColor: Color = .red
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .foregroundColor(Color.white)
            .padding()
            .background(Rectangle().fill(Color.gray))
            .border(borderColor, width: 2)
    }
}

struct MyModifier1: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.title)
    }
}

struct MyModifier2: ViewModifier {
    func body(content: Content) -> some View {
        content.foregroundColor(.blue)
    }
}

extension View {
    func customModifierExtension(borderColor: Color = .red) -> some View {
        self.modifier(CustomViewModifier(borderColor: borderColor))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
