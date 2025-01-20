//
//  IndexButton.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/21/25.
//

import SwiftUI

struct IndexButton: View {
    
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {}) {
            ZStack {
                Color.dwMint00
                    .clipShape(RoundedCornersShape(corners: [.topLeft, .topRight], radius: 12))
                
                BoldOutlineTextView(text: text,
                                textColor: .dwWhite,
                                font: "MaplestoryOTFBold",
                                fontSize: 16,
                                strokeColor: .dwMint20,
                                strokeWidth: 22)
            }
            .overlay(
                RoundedCornersShape(corners: [.topLeft, .topRight], radius: 12)
                    .stroke(Color.dwMint20, lineWidth: 1)
                    .frame(width: 66, height: 32)
            )
        }
        .frame(width: 66, height: 32)
    }
}

struct RoundedCornersShape: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}

#Preview {
    IndexButton(text: "먹이", action: {})
}

