//
//  MainView.swift
//  DaengDaengWeek
//
//  Created by Jini on 11/25/24.
//

import SwiftUI
import SpriteKit

struct MainView: View {
    var scene: SKScene {
        let scene = MainScene()
        scene.size = UIScreen.main.bounds.size
        scene.scaleMode = .resizeFill
        return scene
    }
    
    var body: some View {
        ZStack {
            SpriteView(scene: scene)
                .ignoresSafeArea()
            
            VStack {
                HUDView(affectionLevel: .constant(0.5), moneyAmount: .constant(75000), backgroundColor: .clear, isHospital: false, showEncyclo: {}, popupProfile: {}, showChart: {})
                Spacer()
                HStack(spacing: 11) {
                    BigActionButton(label: "먹이주기", icon: "feedIcon", action: {})
                    BigActionButton(label: "위생관리", icon: "hygienicsIcon", action: {})
                    BigActionButton(label: "애정표현", icon: "affectionIcon", action: {})
                    BigActionButton(label: "외출하기", icon: "outIcon", action: {})
                }
            }
        }
        .statusBar(hidden: true)
    }
}

#Preview {
    MainView()
}
