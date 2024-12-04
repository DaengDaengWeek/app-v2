//
//  Font.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/4/24.
//

import Foundation
import SwiftUI

extension Font {
    enum Daengs {
        case bold
        case light
        case custom(String)
        
        var value: String {
            switch self {
            case .bold:
                return "MaplestoryOTFBold"
            case .light:
                return "MaplestoryOTFLight"
            case .custom(let name):
                return name
            }
        }
    }

    static func dw(_ type: Daengs, size: CGFloat = 14) -> Font {
        return .custom(type.value, size: size)
    }
}

