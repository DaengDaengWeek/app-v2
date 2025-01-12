//
//  SmallActionButton.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/12/25.
//

import SwiftUI

// 메인, 병원 하단의 상호작용 버튼 (small)

struct SmallActionButton: View {
    
    var icon: String
    // var size: Int // 아이콘 사이즈 재조정 필요하면 사용
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                // 버튼 배경
                Color.dwBeige10
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                // 아이콘
                VStack(spacing: 2) {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 57, height: 57)
                }
                
            }
            .frame(width: 71, height: 71)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.dwBrown00, lineWidth: 2)
                    .frame(width: 71, height: 71)
            )
        }
    }
}

#Preview {
    SmallActionButton(icon: "waterIcon", action: {})
}
