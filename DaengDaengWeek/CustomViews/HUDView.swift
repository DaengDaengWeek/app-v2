//
//  HUDView.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/17/24.
//

import SwiftUI

struct HUDView: View {
    
    //전체 높이 200 고정
    
    @Binding var affectionLevel: Double // 애정도 상태를 부모 뷰와 공유
    @Binding var moneyAmount: Int
    @State private var currentTime: String = "" // 현재 시간을 저장
    
    let backgroundColor: Color // 배경색 설정
    var isHospital: Bool // 병원인지 체크 (진료카드 버튼 hidden 여부)
    let showEncyclo: () -> Void
    let popupProfile: () -> Void
    let showChart: () -> Void
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all) // 배경색을 전체 화면에 적용
            
            HStack { // 프로필, 마루, 호감도, 시간 | 돈 | 아이콘
                VStack { // 프로필, 마루, 호감도 | 시간 | 여백
                    HStack { // 프로필 | 마루, 호감도
                        Spacer().frame(width: 16)
                        
                        Button(action: popupProfile) {
                            ZStack {
                                Rectangle()
                                    .fill(Color.dwBeige00)
                                    .frame(width: 67, height: 67)
                                    .cornerRadius(12)
                                    .clipShape(RoundedRectangle(cornerRadius: 14))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 16)
                                            .stroke(Color.dwBrown00, lineWidth: 1.5)
                                    )
                                
                                Image("poodleImg") // 반려견 아이콘
                                    .resizable()
                                    .frame(width: 61.42, height: 61.42)
                            }
                            .padding(.top, 10)
                        }

                        
                        Spacer().frame(width: 8)
                        
                        VStack(alignment: .leading) { // 마루 | 호감도
                            //Spacer().frame(height: 12)
                            
//                            Text("마루")
//                                .font(.dw(.bold, size: 18))
//                                .frame(width: 60, height: 28, alignment: .leading)
//                                .padding(.top, 8)
                            OutlineTextView(text: "마루",
                                            textColor: .dwWhite,
                                            font: "MaplestoryOTFLight",
                                            fontSize: 18,
                                            strokeColor: .dwBrown00,
                                            strokeWidth: 22)
                            .frame(width: 60, height: 28, alignment: .leading)
                            .offset(x: -11, y: 1)
                            .padding(.top, 8)
                            
                            Spacer().frame(height: 0)
                            
                            ZStack(alignment: .leading) {
                                AffectionProgressBarView(progress: affectionLevel,
                                                barBackgroundColor: Color(hex: "#9A9191"),
                                                barColor: .dwPink,
                                                barBorderColor: .dwBrown00,
                                                barBorderWidth: 2,
                                                borderColor: .dwBrown00
                                )
                                .frame(width: 72, height: 14)
                                
                                Image("heartIcon") // 하트 아이콘
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .offset(x: -10, y: -2)
                            }
                            .padding(.leading, 8)
                        }
                        
                    }
                    
                    Spacer().frame(height: 16)
                    
//                    Text(currentTime) // 현재 시간 표시
//                        .font(.dw(.bold, size: 16))
//                        .onAppear(perform: updateTime) // 뷰가 나타날 때 시간 업데이트 시작
//                        .frame(width: 90, height: 40)
//                        .cornerRadius(8)
//                        .padding(.horizontal, 2)
//                        .padding(.vertical, 1)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(Color.gray, lineWidth: 2)
//                                .fill(Color.gray.opacity(0.2))
//                        )
//                        .padding(.leading, 24)
                    
                    Spacer()
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .opacity(0)
                        .cornerRadius(10)
                        .frame(width: 124, height: 28)
                        .overlay(
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Color.dwBrown00, lineWidth: 2)
                                .fill(Color.dwBrown00.opacity(0.5))
                                .frame(width:124, height: 28)
                        )

                    Image("coinIcon_border")
                        .resizable()
                        .frame(width: 38, height: 38)
                        .offset(x: -58, y: 0)
                    
                    HStack {
                        Text("1,250,000")
                            .font(.dw(.bold, size: 16))
                            .foregroundColor(.white)
                            .frame(width: 90, alignment: .trailing)
                            .padding(.trailing, 10)
                    }
                    .frame(width: 124, height: 28)
                    .offset(x: 6, y: 0)
                }
                
                .padding(.bottom, 140)
            
                Spacer().frame(width: 20)
                
                VStack(spacing: 13) {
                    Spacer().frame(height: 8)
                    
                    Button(action:{}) {
                        Image("settingIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width:40, height:40)
                    }
                    
                    Button(action:{}) {
                        Image("bellIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width:40, height:40)
                    }
                    .padding(.bottom, 2)
                    
                    Button(action:{
                        showEncyclo()
                    }) {
                        Image("bookIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width:40, height:40)
                    }
                    .padding(.bottom, 2)
                    
                    Button(action: {
                        showChart()
                    }) {
                        Image("chartIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40)
                            .opacity(isHospital ? 1 : 0)
                    }
                }
            }
            .padding(.trailing, 13)
        }
        .frame(height: 250)
    }
    
//    func updateTime() {
//        let formatter = DateFormatter()
//        formatter.locale = Locale(identifier: "ko_KR")
//        formatter.dateFormat = "a hh:mm"
//        currentTime = formatter.string(from: Date())
//        
//        Timer.scheduledTimer(withTimeInterval:1.0, repeats: true){ _ in
//            currentTime = formatter.string(from: Date())
//        }
//    }
}

#Preview {
    HUDView(affectionLevel:.constant(0.5), moneyAmount: .constant(0), backgroundColor: .dwPink, isHospital: false, showEncyclo: {}, popupProfile: {}, showChart: {})
}

