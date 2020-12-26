//
//  ContentView.swift
//  SweetSwiftUIText
//
//  Created by hanwe on 2020/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Text("폰트와 굵기 설정")
                .font(.title) //폰트 설정
                .fontWeight(.black) //폰트 굵기
            
            Text("글자색은 foreground, 배경은. background")
                .foregroundColor(.white) //글자색
                .padding() //텍스트 주변 여백 설정
                .background(Color.blue) // 텍스트의 배경 설정(Color 명시)
            
            Text("커스텀 폰트, 볼드체, 이탤릭체, 밑줄, 취소선")
                .font(.custom("Menlo", size: 16)) //커스텀 폰트 설정
                .bold() //볼드체
                .italic() //이탤릭체
                .underline() // 밑줄
                .strikethrough() // 취소선
            
            Text("라인 수 제한과 \n 텍스트 정렬 기능입니다. \n 이건 안 보입니다.")
                .lineLimit(2) //텍스트를 최대 2줄까지만 표현
                .multilineTextAlignment(.trailing) // 다중행 문자열의 정렬 방식 지정
                .fixedSize() // 주어진 공간의 크기가 작아도 텍스트를 생략하지 않고 표현되도록 설정
            
            //2개 이상의 텍스트를 하나로 묶어서 동시에 적용할 수도 있습니다.
            (Text("자간과 기준선").kerning(8) + //자간
                Text(" 조정도 쉽게 가능합니다.").baselineOffset(8))// 기준선
                .font(.system(size: 16))
            
//            Text("SwiftUI")
//                .padding() //View
//                .font(.title) //View
//                .bold() // 컴파일 오류 - 뷰 프로토콜에는 bold 수식어가 없으므로 오류가 발생합니다.
//            -----> 수식어가 적용되는 시점에따라 어떤게 리턴되는지 확인한 후 순서에 맞게 적용을 해야함
            
            Text("🤡💩👻💀")
                .font(.largeTitle)
                .background(Color.yellow)
                .padding()
            
            Text("🤡💩👻💀")
                .font(.largeTitle)
                .padding()
                .background(Color.yellow)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
