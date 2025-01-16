//
//  SettingModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/16/25.
//

import SwiftUI

struct SettingModalView: View {
    
    var body: some View {
        
        ZStack {
            settingview
        }
 
    }
    
    var settingview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack {
                // 설정 타이틀
                Text("설정")
                    .font(.dw(.bold, size: 22))
                    .foregroundColor(.dwBrown00)
                
                // 선
                
                // 배경음 5 바 HStack
                // 효과음 0 바 HStack
                // 공백
                // 알림 스위치 방해금지 스위치 HStack 두고 알림 방해금지 VStack 쌓기
                // 개인정보보호정책 | 이용약관 초기화 HStack
                
                
                // 공백
                Spacer().frame(height: 13)
                
                // 버튼 두개 HStack
                HStack(spacing: 9) {
                    Button(action: {}) {
                        ZStack {
                            Color.dwGray00
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            BoldOutlineTextView(text: "액션",
                                            textColor: .dwWhite,
                                            font: "MaplestoryOTFBold",
                                            fontSize: 20,
                                            strokeColor: .dwGray10,
                                            strokeWidth: 22)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.dwGray10, lineWidth: 2)
                                .frame(width: 140, height: 55)
                        )
                    }
                    .frame(width: 140, height: 55)
                    
                    Button(action: {}) {
                        ZStack {
                            Color.dwMint00
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                            
                            BoldOutlineTextView(text: "액션",
                                            textColor: .dwWhite,
                                            font: "MaplestoryOTFBold",
                                            fontSize: 20,
                                            strokeColor: .dwMint20,
                                            strokeWidth: 22)
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.dwMint20, lineWidth: 2)
                                .frame(width: 140, height: 55)
                        )
                    }
                    .frame(width: 140, height: 55)
                }
            }
        }
        .frame(width: 329, height: 406)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
}

#Preview {
    SettingModalView()
}

