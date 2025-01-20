//
//  EncyclopediaModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

struct EncyclopediaModalView: View {
    
    var body: some View {
        
        ZStack {
            encyclopediaview
        }
 
    }
    
    var encyclopediaview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack {
                // 제목 | X버튼 HStack
                ZStack {
                    Text("멍멍테니커 백과사전")
                        .font(.dw(.bold, size: 22))
                        .foregroundColor(.dwBrown00)
                    
                    Button(action: {
                        
                    }) {
                        Image("closeIcon")
                            .resizable()
                            .frame(width: 50, height: 50)
                    }
                    .offset(x: 130, y: 0)
                }
                
                // 선
                Divider()
                    .frame(height: 1)
                    .background(Color.dwDivider)
                    .padding(.horizontal, 20)
                    .padding(.top, -12)
                
                // 공백
                Spacer().frame(height: 30)
                
                // 인덱스 버튼 HStack (먹이 | 위생 | 애정 | 외출)
                HStack(spacing: 2) {
                    IndexButton(text: "먹이", action: {})
                    
                    IndexButton(text: "위생", action: {})
                    
                    IndexButton(text: "애정", action: {})
                    
                    IndexButton(text: "외출", action: {})
                }
                .padding(.horizontal, 31)
                
                Spacer().frame(height: 0)
                
                // 선
                Divider()
                    .frame(height: 1)
                    .background(Color.dwBrown00)
                    .offset(x: 0, y: -0.2) // 조절 필요
                
                // 내용 뷰

            }
            
        }
        .frame(width: 329, height: 568)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
    
}

#Preview {
    EncyclopediaModalView()
}
