//
//  HomeButton.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/12/25.
//

import SwiftUI

// 홈버튼 (메인이동)

struct HomeButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                // 버튼 배경
                Color.dwBeige00
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                
                // 아이콘
                VStack(spacing: 2) {
                    Image("homeIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 46, height: 46)
                }
                
            }
            .frame(width: 69, height: 69)
            .overlay(
                RoundedRectangle(cornerRadius: 24)
                    .stroke(Color.dwBrown00, lineWidth: 1.5)
                    .frame(width: 69, height: 69)
            )
        }
    }
}

#Preview {
    HomeButton(action: {})
}
