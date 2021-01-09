//
//  ContentView.swift
//  SweetSwiftUICustomStyle
//
//  Created by hanwe on 2021/01/09.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            Button("커스텀 버튼 스타일1") { }
                .buttonStyle(CustomButtonStyle(backgroundColor: .green))
            Button("커스텀 버튼 스타일2") { }
                .buttonStyle(CustomButtonStyle(cornerRadius: 20))
            
            Button("커스텀 버튼 스타일3") { }
                .buttonStyle(CustomPrimitiveButtonStyle())
            Button("커스텀 버튼 스타일4") { }
                .buttonStyle(CustomPrimitiveButtonStyle(minimumDuration: 1))
            
            Toggle("기본 토글", isOn: $isOn)
            
            Toggle("커스텀 토글", isOn: $isOn)
                .toggleStyle(CustomToggleStyle())
        }
    }
}

struct CustomButtonStyle: ButtonStyle {
    var backgroundColor: Color = .blue
    var cornerRadius: CGFloat = 6
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(backgroundColor))
            .scaleEffect(configuration.isPressed ? 0.7 : 1.0)
    }
}

struct CustomPrimitiveButtonStyle: PrimitiveButtonStyle {
    var minimumDuration = 0.5 // 기본값 0.5초 지정
    func makeBody(configuration: Configuration) -> some View {
        ButtonStyleBody(configuration: configuration, minimumDuration: minimumDuration)
    }
    
    private struct ButtonStyleBody: View {
        let configuration: Configuration
        let minimumDuration: Double
        @GestureState private var isPressed = false
        
        var body: some View {
            let longPress = LongPressGesture(minimumDuration: minimumDuration)
                .updating($isPressed) { value, state, _ in
                    state = value
                }
                .onEnded { _ in self.configuration.trigger() }
            return configuration.label
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .scaleEffect(isPressed ? 0.8 : 1.0) //누르고 있는 동안 발생할 효과 지정
                .opacity(isPressed ? 0.6 : 1.0) //누르고 있는 동안 발생할 효과 지정
                .gesture(longPress) // gesture 수식어로 미리 정의한 제스쳐 추가
        }
    }
}

struct CustomToggleStyle: ToggleStyle {
    let size: CGFloat = 30
    
    func makeBody(configuration: Configuration) -> some View {
        let isOn = configuration.isOn
        return HStack {
            configuration.label // 토글의 사용 용도를 표시하기 위한 뷰
            
            Spacer()
            
            ZStack(alignment: isOn ? .top : .bottom) {
                Capsule()
                    .fill(isOn ? Color.green : Color.red)
                    .frame(width: size, height: size * 2)
                
                Circle()
                    .frame(width: size - 2, height: size - 2)
                    .onTapGesture {
                        withAnimation{
                            configuration.isOn.toggle()
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
