//
//  PledgeModalView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI

struct PledgeModalView: View {
    
    //@Binding var isPresented: Bool
    @State var name: String = "마루"
    @State var selectedGender = "성별을 선택해주세요"
    var gender = ["여", "남"]
    
    var body: some View {
        
        ZStack {
            pledgeview
        }
 
    }
    
    var pledgeview: some View {
        ZStack {
            Color.dwBeige00.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ZStack {
                    Text("서약서")
                        .font(.dw(.bold, size: 26))
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
                
                // 이름
                HStack(spacing: 16) {
                    Text("이름")
                        .font(.dw(.bold, size: 15))
                        .foregroundColor(.dwBrown00)
                    
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.dwWhite)
                            .frame(width: 208, height: 44)
                            .cornerRadius(8)
                        
                        TextField("", text: $name)
                            .font(.dw(.light, size: 16))
                            .frame(width: 188, height: 44)
                            .padding(.horizontal, 10)
                    }
                }
                .padding(.top, 8)
                
                // 견종
                HStack(spacing: 16) {
                    Text("견종")
                        .font(.dw(.bold, size: 15))
                        .foregroundColor(.dwBrown00)
                        .offset(x: 0, y: -35)
                    
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.dwWhite)
                            .frame(width: 208, height: 112)
                            .cornerRadius(8)
                        
                        Text("")
                            .font(.dw(.light, size: 16))
                            .frame(width: 188, height: 44, alignment: .leading)
                            .padding(.horizontal, 10)
                    }
                }
                
                // 성별
                HStack(spacing: 16) {
                    Text("성별")
                        .font(.dw(.bold, size: 15))
                        .foregroundColor(.dwBrown00)
                    
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.dwWhite)
                            .frame(width: 208, height: 44)
                            .cornerRadius(8)
                        
//                        Text("여")
//                            .font(.dw(.light, size: 16))
//                            .frame(width: 188, height: 44, alignment: .leading)
//                            .padding(.horizontal, 10)
                        
                        Menu {
                            ForEach(gender, id: \.self) { item in
                                Button(action: {
                                    selectedGender = item
                                }) {
                                    Text(item)
                                }
                            }
                        } label: {
                            HStack {
                                Text(selectedGender)
                                    .font(.dw(.light, size: 16))
                                    .foregroundColor(
                                        selectedGender == "성별을 선택해주세요" ? Color.dwGray00 : Color.dwBlack
                                    )
                                    .frame(width: 152, alignment: .leading)

                                Image("disclosureIcon")
                                    .resizable()
                                    .frame(width: 14, height: 9)
                                    .padding(.leading, 10)
                            }
                            .padding(.horizontal, 10)
                            .frame(width: 188, height: 44)
                        }
                    }
                }
                
                
                // 나이
                HStack(spacing: 16) {
                    Text("나이")
                        .font(.dw(.bold, size: 15))
                        .foregroundColor(.dwBrown00)
                    
                    
                    ZStack {
                        Rectangle()
                            .fill(Color.dwWhite)
                            .frame(width: 208, height: 44)
                            .cornerRadius(8)
                        
                        Text("3개월")
                            .font(.dw(.light, size: 16))
                            .frame(width: 188, height: 44, alignment: .leading)
                            .padding(.horizontal, 10)
                    }
                }
                
                // 공백
                Spacer().frame(height: 15)
                
                // 서약 문구 (자간 설정 필요)
                Text("위 반려견과 주인의 행복을 위하여 일주일 동안 열심히 마루를 알아가겠습니다.")
                    .font(.dw(.light, size: 20))
                    .foregroundColor(.dwBrown00)
                    .padding(.horizontal, 23)
                    .frame(width: 283, height: 90)
                    .multilineTextAlignment(.center)
                
                
                // 공백
                Spacer().frame(height: 10)
                
                // 동의 버튼
                Button(action: {}) {
                    ZStack {
                        Color.dwMint00
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                        BoldOutlineTextView(text: "동의하기",
                                        textColor: .dwWhite,
                                        font: "MaplestoryOTFBold",
                                        fontSize: 20,
                                        strokeColor: .dwMint20,
                                        strokeWidth: 22)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.dwMint20, lineWidth: 2)
                            .frame(width: 191, height: 55)
                    )
                }
                .frame(width: 191, height: 55)
            }
            
        }
        .frame(width: 329, height: 689)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.dwBrown00, lineWidth: 2)
        )
    }
}

#Preview {
    PledgeModalView()
}
