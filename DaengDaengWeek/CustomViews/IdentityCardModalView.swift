//
//  IdentityCardModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/14/25.
//

import SwiftUI

struct IdentityCardModalView: View {
    
    var body: some View {
        
        ZStack {
            cardview
        }
 
    }
    
    var cardview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack {
                // 동물등록증 | X버튼 HStack
                ZStack {
                    Text("동물등록증")
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
                
                // 정보 | 사진 HStack
                HStack {
                    // 정보 VStack
                    VStack(spacing: 8) {
                        ZStack {
                            Rectangle()
                                .fill(Color.dwBeige30)
                                .frame(width: 168, height: 27)
                                .cornerRadius(10)
                            
                            HStack(spacing: 14) {
                                Text("이름")
                                    .font(.dw(.light, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 52, alignment: .leading)
                                
                                Text("마루")
                                    .font(.dw(.bold, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 80, alignment: .leading)
                            }
                        }

                        ZStack {
                            Rectangle()
                                .fill(Color.dwBeige30)
                                .frame(width: 168, height: 27)
                                .cornerRadius(10)
                            
                            HStack(spacing: 14) {
                                Text("등록번호")
                                    .font(.dw(.light, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 52, alignment: .leading)
                                
                                Text("24102414")
                                    .font(.dw(.bold, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 80, alignment: .leading)
                            }
                        }
                        
                        ZStack {
                            Rectangle()
                                .fill(Color.dwBeige30)
                                .frame(width: 168, height: 27)
                                .cornerRadius(10)
                            
                            HStack(spacing: 14) {
                                Text("견종")
                                    .font(.dw(.light, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 52, alignment: .leading)
                                
                                Text("푸들")
                                    .font(.dw(.bold, size: 15))
                                    .foregroundColor(.dwBrown00)
                                    .frame(width: 80, alignment: .leading)
                            }
                        }
                    }
                    
                    // 사진
                    ZStack {
                        Circle()
                            .fill(Color.dwBeige30)
                            .frame(width: 91, height: 91)
                        
                        Image("poodleImg") // 강아지 아이콘
                            .resizable()
                            .frame(width: 80, height: 80)
                    }
                }
                .padding(.horizontal, 29)
                .padding(.top, 6)
                
                // n일 함께했습니다 문구
                Text("마루와 1일 함께했습니다.")
                    .font(.dw(.light, size: 12))
                    .foregroundColor(.dwBrown00)
                    .padding(.top, 6)
                    .offset(x: -68, y: 0)
            }
            
        }
        .frame(width: 329, height: 223)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
    
}

#Preview {
    IdentityCardModalView()
}
