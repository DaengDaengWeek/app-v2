//
//  SettingModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/16/25.
//

import SwiftUI

struct SettingModalView: View {
    
    @State var backgroundSoundValue: Double = 5
    @State var effectSoundValue: Double = 0
    @State private var isAlarmOn: Bool = true
    @State private var isDontDisturbOn: Bool = false
    
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
                Divider()
                    .frame(height: 1)
                    .background(Color.dwDivider)
                    .padding(.horizontal, 20)
                
                // 배경음 5 바 HStack
                HStack {
                    Text("배경음")
                        .font(.dw(.bold, size: 16))
                        .foregroundColor(.dwBrown00)
                    
                    Text("\(Int(backgroundSoundValue))")
                        .font(.dw(.light, size: 16))
                        .foregroundColor(.dwBrown00)
                        .padding(.leading, 10)
                        .frame(width: 20)
                    
                    Slider(
                        value: $backgroundSoundValue,
                        in: 0...5,
                        step: 1
                    )
                    .accentColor(.dwMint00)
                    .frame(width: 170)
                    .padding(.leading, 22)
                }
                .padding(.top, 22)
                .padding(.horizontal, 30)
                
                // 공백
                Spacer().frame(height: 2)
                
                // 효과음 0 바 HStack
                HStack {
                    Text("효과음")
                        .font(.dw(.bold, size: 16))
                        .foregroundColor(.dwBrown00)
                    
                    Text("\(Int(effectSoundValue))")
                        .font(.dw(.light, size: 16))
                        .foregroundColor(.dwBrown00)
                        .padding(.leading, 12)
                        .frame(width: 22)
                    
                    Slider(
                        value: $effectSoundValue,
                        in: 0...5,
                        step: 1
                    )
                    .accentColor(.dwMint00)
                    .frame(width: 170)
                    .padding(.leading, 22)
                }
                .padding(.horizontal, 30)
                
                // 공백
                Spacer().frame(height: 35)
                
                // 알림 스위치 방해금지 스위치 HStack 두고 알림 방해금지 VStack 쌓기
                HStack(spacing: 38) {
                    HStack {
                        Text("알림")
                            .font(.dw(.bold, size: 16))
                            .foregroundColor(.dwBrown00)
                        
                        Toggle("", isOn: $isAlarmOn)
                            .toggleStyle(SwitchToggleStyle(tint: Color.dwMint00))
                            .frame(width: 50)
                            .padding(.leading, 14)
                    }
                    
                    HStack {
                        Text("방해금지")
                            .font(.dw(.bold, size: 16))
                            .foregroundColor(.dwBrown00)
                        
                        Toggle("", isOn: $isDontDisturbOn)
                            .toggleStyle(SwitchToggleStyle(tint: Color.dwMint00))
                            .frame(width: 50)
                            .padding(.leading, 14)
                    }
                }
                .padding(.horizontal, 30)
                
                HStack {
                    Spacer()
                    
                    //시작시간&종료시간
                    VStack(spacing: 8) {
                        Text("오후 11시 ~")
                            .font(.dw(.light, size: 14))
                            .foregroundColor(.dwGray00)
                            .frame(width: 130, alignment: .leading)
                        
                        Text("오전 7시")
                            .font(.dw(.light, size: 14))
                            .foregroundColor(.dwGray00)
                            .frame(width: 130, alignment: .leading)
                    }
                }
                .padding(.horizontal, 30)
                
                // 공백
                Spacer().frame(height: 24)
                
                
                // 개인정보보호정책 | 이용약관 초기화 HStack
                HStack {
                    Button(action: {}) {
                        ZStack {
                            Text("개인정보보호정책  |  이용약관")
                                .font(.dw(.light, size: 14))
                                .foregroundColor(.dwBrown00)
                        }
                    }
                    .frame(width: 165, height: 30)
                    
                    Spacer().frame(width: 30)
                    
                    Button(action: {}) {
                        ZStack {
                            Color.dwBrown10
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            
                            Text("초기화")
                                .font(.dw(.light, size: 15))
                                .foregroundColor(.dwWhite)
                        }
                    }
                    .frame(width: 76, height: 30)
                }
                .padding(.leading, 30)
                .padding(.trailing, 30)
                
                // 공백
                Spacer().frame(height: 15)
                
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

