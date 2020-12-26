//
//  ColorExtension.swift
//  FruitMart
//
//  Created by hanwe on 2020/12/26.
//  Copyright © 2020 Giftbot. All rights reserved.
//

import SwiftUI
extension Color {
    static let peach = Color("peach") //앱에서 사용할 메인 색
    static let primaryShadow = Color.primary.opacity(0.2) //그림자에 사용할 색
    static let secondaryText = Color(hex: "#6e6e6e")
    static let background = Color(UIColor.systemGray6)
    
    init(hex: String) {
        let scanner = Scanner(string: hex) // 문자열 파서 역할을 하는 클래스
        _ = scanner.scanString("#") // scancString은 iOS 13부터 지원. "#" 문자 제거
        
        var rgb: UInt64 = 0
        // 문자열을 Int64 타입으로 변환해 rgb변수에 저장. 변환할 수 없다면 0을 반환
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0 //좌측 문자열 2개 추출
        let g = Double((rgb >> 8) & 0xFF) / 255.0 //중간 문자열 2개 추출
        let b = Double((rgb >> 0) & 0xFF) / 255.0 //우측 문자열 2개 추출
        self.init(red: r, green: g, blue: b)
    }
}
