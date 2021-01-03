//
//  ContentView.swift
//  SweetSwiftUIPresentStyle
//
//  Created by hanwe on 2021/01/03.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    @State var showingPopover = false
    
    var body: some View {
        VStack {
            Button(action: { self.showingSheet.toggle() }) {
                Text("Present")
                    .font(.title).foregroundColor(.blue)
            }
            .sheet(isPresented: $showingSheet,
                   onDismiss: { print("dismissed") },
                   content: {
                    PresentedView()
            })
            
            Button(action: { self.showingPopover.toggle() }) {
                Text("Popover Button").font(.largeTitle)
            }
            .popover(isPresented: $showingPopover,
                     attachmentAnchor: .rect(.bounds),
                     arrowEdge: .top,
                     content: popoverContents)
        }
    }

    func popoverContents() -> some View { //팝오버에 표시될 콘텐츠
        VStack(alignment: .leading) {
            HStack {
                Button(action: { self.showingPopover = false }) { //팝오버 제거
                    Text("Cancel").foregroundColor(.red)
                }
                Spacer()
                Text("New Event").font(.headline)
                Spacer()
                Button("Add(+)") { }
            }
            Divider().padding(.bottom, 8) // 구분선 추가
            
            Text("Title")
            TextField("제목", text: .constant(""))
            Text("Constents")
            TextField("내용", text: .constant(""))
            Spacer()
        }
        .padding()
    }
    
}

struct PresentedView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            if self.presentationMode.wrappedValue.isPresented {
                self.presentationMode.wrappedValue.dismiss()
            }
        }) {
            Text("Tap to Dismiss")
                .font(.title).foregroundColor(.red)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
