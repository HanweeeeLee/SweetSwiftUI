//
//  ContentView.swift
//  SweetSwiftUIFrame
//
//  Created by hanwe on 2020/12/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.yellow).frame(width: 30)
            
            VStack {
                Rectangle().fill(Color.blue).frame(height: 200)
                
                GeometryReader {
                    //레이아웃을 위한 뷰와 실제 콘텐츠 분리
                    self.contents(geometry: $0)
                }
                .background(Color.green)
                .border(Color.red, width: 4)
            }
            .coordinateSpace(name: "VStackCS") //VStack의 좌표 공간에 이름 부여
        }
        .coordinateSpace(name: "HStackCS") // HStack의 좌표 공간에 이름 부여
    }
    
    func contents(geometry g: GeometryProxy) -> some View {
        VStack {
            Text("Local").bold()
            Text(stringFormat(for: g.frame(in: .local).origin))
                .padding(.bottom)
            
            Text("Global").bold()
            Text(stringFormat(for: g.frame(in: .global).origin))
                .padding(.bottom)
            
            Text("named VStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("VStackCS")).origin))
                .padding(.bottom)
            
            Text("named HStackCS").bold()
            Text(stringFormat(for: g.frame(in: .named("HStackCS")).origin))
                .padding(.bottom)
        }
    }
    
    func stringFormat(for point: CGPoint) -> String {
        String(format: "(x: %.f, y: %.f)", arguments: [point.x,point.y])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
