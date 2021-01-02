//
//  ContentView.swift
//  SweetSwiftUIAlertAndActionSheet
//
//  Created by hanwe on 2021/01/02.
//

import SwiftUI

struct ContentView: View {
    @State var showingAlert: Bool = false
    @State var showingAlertSheet: Bool = false
    var body: some View {
        VStack {
            Button(action: { self.showingAlert = true }, label: {
                Text("Alert")
            })
            .alert(isPresented: $showingAlert, content: { // showingAlert가 true가 되면 알림창 표시
                Alert(title: Text("제목"),
                      message: Text("내용"),
                      primaryButton: .default(Text("확인"), action: { print("확인") }),
                      secondaryButton: .cancel(Text("취소")))
            })
            
            Button(action: { self.showingAlertSheet = true }, label: {
                Text("AlertSheet")
            })
            .actionSheet(isPresented: $showingAlertSheet, content: {
                ActionSheet(title: Text("제목"),
                            message: Text("내용"),
                            buttons: [
                                .default(Text("버튼1")),
                                .default(Text("버튼2")),
                                .default(Text("버튼3")),
                                .cancel(Text("취소"))
                            ])
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
