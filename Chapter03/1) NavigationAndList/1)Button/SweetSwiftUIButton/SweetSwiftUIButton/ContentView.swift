//
//  ContentView.swift
//  SweetSwiftUIButton
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }, label: {
                Text("Button")
            })
            
            HStack(spacing: 20) {
                
                Button("Button") {
                    print("button1")
                }
                .buttonStyle(PlainButtonStyle()) //스타일을 먹일 수 있다.
                
                Button(action: {
                    print("button2")
                }, label: {
                    Text("Button")
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                })
                
                Button(action: { print("button3") }, label: {
                    Circle()
                        .stroke(lineWidth: 2)
                        .frame(width: 80, height: 80)
                        .overlay(Text("Button"))
                })
                .accentColor(.green)
            }
            
            HStack(spacing: 20) {
                Button(action: { print("Button4") }, label: {
                    Image("tomato")
//                        .renderingMode(.template) // 모드를 변경 할 수 있다.
                        .resizable()
                        .frame(width: 120, height: 120)
                })
                Button(action: { print("Button5") }, label: {
                    Image(systemName: "play.circle")
                        .imageScale(.large)
                        .font(.largeTitle)
                })
            }
            .padding()
            
            HStack() {
                Button("DefaultButtonStyle") {}
                    .buttonStyle(DefaultButtonStyle())
                Button("BorderlessButtonStyle") {}
                    .buttonStyle(BorderlessButtonStyle())
                Button("PlainButtonStyle") {}
                    .buttonStyle(PlainButtonStyle())
            }
            
            Image(systemName: "person.circle").imageScale(.large)
                .onTapGesture { print("onTapGesture") }
            Button(action: { print("버튼") }, label: {
                Image(systemName: "person.circle").imageScale(.large)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
