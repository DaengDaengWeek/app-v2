//
//  WalkProgressView.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/12/25.
//

import SwiftUI

struct WalkProgressView: View {
    
    var action: () -> Void
    
    var body: some View {
        ZStack {
            // 배경
            Color.dwBeige00
                .clipShape(RoundedRectangle(cornerRadius: 24))
            
            VStack {
                // 사람 아이콘
                Image("walkingIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    .offset(x: 80, y: 0)
                
                Spacer().frame(height: 2)
                
                // 프로그레스바
                WalkProgressBarView(progress: 0.8,
                                barBackgroundColor: Color(hex: "#815C56").opacity(0.5),
                                barColor: .dwMint00,
                                barBorderColor: .dwBrown00,
                                barBorderWidth: 2
                )
                .frame(height: 18)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                
                // 걸음 | 현재 소요시간 | 총 시간
                HStack {
                    Spacer().frame(width: 17)
                    Text("1185 걸음")
                        .font(.dw(.light, size: 16))
                        .foregroundColor(.dwBrown00)
                        .frame(width: 80, alignment: .leading)
                        //.padding(.leading, 18)
                    
                    WalkTimerView()
                    
                    Text("총 15분")
                        .font(.dw(.light, size: 16))
                        .foregroundColor(.dwBrown00)
                        .frame(width: 48, alignment: .center)
                        //.padding(.trailing, 18)
                    Spacer().frame(width: 18)
                }
            }
            
        }
        .frame(width: 361, height: 143)
        
    }
}

#Preview {
    WalkView()
}
