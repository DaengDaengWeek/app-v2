//
//  OutlineTextView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/13/25.
//

import SwiftUI
import UIKit

struct OutlineTextView: View {
    
    let text: String
    let textColor: Color
    let font: String
    let fontSize: CGFloat
    let strokeColor: Color
    let strokeWidth: CGFloat
    
    //private var storkeUIColor: UIColor { UIColor(strokeColor) }
    
    init(
        text: String,
        textColor: Color,
        font: String,
        fontSize: CGFloat,
        strokeColor: Color,
        strokeWidth: CGFloat = 15
    ) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.fontSize = fontSize
        self.strokeColor = strokeColor
        self.strokeWidth = strokeWidth
    }
    
    var body: some View {
        StrokeText(
            text: text,
            font: UIFont(name: font, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize),
            strokeColor: UIColor(strokeColor),
            strokeWidth: strokeWidth
        )
        .overlay {
            Text(text)
                .font(.dw(.light, size: fontSize))
                .foregroundStyle(textColor)
        }
        
    }

}


struct StrokeText: UIViewRepresentable {
    let text: String
    let font: UIFont
    let strokeColor: UIColor
    let strokeWidth: CGFloat
    
    func makeUIView(context: Context) -> UILabel {
        let label: UILabel = UILabel()
        let attribute: [NSAttributedString.Key: Any] = [
            .strokeColor: strokeColor,
            .strokeWidth: strokeWidth,
            .font: font
        ]
        label.attributedText = NSAttributedString(string: text, attributes: attribute)
        label.sizeToFit()
        label.textAlignment = .center
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        let attribute: [NSAttributedString.Key: Any] = [
            .strokeColor: strokeColor,
            .strokeWidth: strokeWidth,
            .font: font
        ]
        uiView.attributedText = NSAttributedString(string: text, attributes: attribute)
        uiView.textAlignment = .center
        uiView.sizeToFit()
    }
}



#Preview {
    OutlineTextView(text: "마루",
                    textColor: .dwWhite,
                    font: "MaplestoryOTFLight",
                    fontSize: 24,
                    strokeColor: .dwBrown00,
                    strokeWidth: 24)
}
