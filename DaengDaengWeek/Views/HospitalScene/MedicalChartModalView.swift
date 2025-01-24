//
//  MedicalChartModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

struct MedicalChartModalView: View {
    
    var body: some View {
        
        ZStack {
            initialview
        }
 
    }
    
    var initialview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack {
                // 진료카드 | X버튼 HStack
                ZStack {
                    Text("진료카드")
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
                            ChartRow()
                        }
                    }
                    .padding(.horizontal, 0)
                }
                .frame(width: 329, height: 368)
                .padding(.top, 15)
                
                Spacer().frame(height: 105)
            }
            
        }
        .frame(width: 329, height: 568)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
    
}

struct ChartRow: View {
    var body: some View {
        ZStack {
            Color.dwWhite.ignoresSafeArea()
            
            HStack(spacing: 11) {
                // 이미지
                Image("treatmentIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.leading, 15)
                
                // 내용 VStack
                HStack(spacing: 6) {
                    Text("정기진료")
                        .font(.dw(.bold, size: 14))
                        .foregroundColor(.dwBrown00)
                    
                    Text("2024.10.24")
                        .font(.dw(.light, size: 12))
                        .foregroundColor(.dwBrown20)
                }
                .padding(.trailing, 30)
                
                Spacer()
            }
            .frame(width: 287)
            
            Divider()
                .frame(height: 1)
                .background(Color(hex: "#EBE9E4"))
                .offset(x: 0, y: 25)
            
            
        }
        .frame(width: 287, height: 52)
    }
}

#Preview {
    MedicalChartModalView()
}

