//
//  BigActionButton.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/12/24.
//

import SwiftUI

// 메인, 병원 하단의 상호작용 버튼 (big)

struct BigActionButton: View {
    
    var label: String
    var icon: String
    // var size: Int // 아이콘 사이즈 재조정 필요하면 사용
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                // 버튼 배경
                Color.dwBeige10
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                
                // 아이콘, 텍스트
                VStack(spacing: 2) {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 56, height: 56)
                    
                    Text(label)
                        .font(.dw(.light, size: 13))
                        .foregroundColor(.dwBrown00)
                }
                
            }
            .frame(width: 82, height: 82)
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.dwBrown00, lineWidth: 2)
                    .frame(width: 82, height: 82)
            )
        }
    }
}

#Preview {
    BigActionButton(label: "먹이주기", icon: "feedIcon", action: {})
}
