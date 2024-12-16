//
//  Color.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/4/24.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r, g, b: UInt64
        switch hex.count {
        case 6: // RGB (without alpha)
            (r, g, b) = ((int >> 16) & 0xFF, (int >> 8) & 0xFF, int & 0xFF)
        default:
            (r, g, b) = (1, 1, 1) // Default to white in case of an error
        }
        self.init(
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255
        )
    }
    
    // 16진수 색상코드 가져와서 커스텀 컬러 지정
    static let dwBeige00 = Color(hex: "#FAF5EB")
    static let dwBeige10 = Color(hex: "#F0EADD")
    static let dwBeige20 = Color(hex: "#F1E9D7")
    
    static let dwBrown00 = Color(hex: "#815C56")
    
    static let dwPink = Color(hex: "FFA6EF")
    
    static let dwMint00 = Color(hex: "#86D1D1")
    static let dwMint10 = Color(hex: "#59C0C0")
    static let dwMint20 = Color(hex: "#00A3A3")

}

