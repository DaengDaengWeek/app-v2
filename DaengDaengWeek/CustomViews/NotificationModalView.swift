//
//  NotificationModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/21/25.
//

import SwiftUI

struct NotificationModalView: View {
    
    var body: some View {
        
        ZStack {
            notificationview
        }
 
    }
    
    var notificationview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack {
                // 알림 | X버튼 HStack
                ZStack {
                    Text("알림")
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
                
                Spacer().frame(height: 0)
                
                // 내용 List
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0..<6, id: \.self) { _ in
                            ContentRow()
                        }
                    }
                    .padding(.horizontal, 0)
                }
                .frame(width: 329, height: 368)
                .padding(.top, -11)
            }
            
        }
        .frame(width: 329, height: 424)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
    
}

struct ContentRow: View {
    var body: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            HStack(spacing: 15) {
                // 이미지
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.dwBeige10)
                        .frame(width: 46, height: 46)
                    
                    Image("waterIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35.15, height: 34)
                }
                .padding(.leading, 15)
                
                // 내용 VStack
                VStack(alignment: .leading, spacing: 5) {
                    Text("마루가 목말라하고 있어요. 깨끗한 물을\n채워주세요!")
                        .font(.dw(.light, size: 15))
                        .foregroundColor(.dwBrown00)
                        .frame(width: 223, alignment: .leading)
                    
                    Text("12.12 10:00")
                        .font(.dw(.light, size: 12))
                        .foregroundColor(.dwGray10)
                }
                .padding(.trailing, 30)
            }
            .frame(width: 329)
            
            Divider()
                .frame(height: 1)
                .background(Color(hex: "#EBE9E4"))
                .offset(x: 0, y: 44)
        }
        .frame(width: 329, height: 90)
    }
}

#Preview {
    NotificationModalView()
}

