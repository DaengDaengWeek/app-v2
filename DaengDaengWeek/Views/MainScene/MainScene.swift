//
//  MainScene.swift
//  DaengDaengWeek
//
//  Created by Jini on 12/9/24.
//

import SwiftUI
import SpriteKit

class MainScene: SKScene {
    override func didMove(to view: SKView) {
        setupScene()
    }
    
    private func setupScene() {
        let background = SKSpriteNode(imageNamed: "home_bg")
        background.position = CGPoint(x: size.width / 2, y: size.height / 2) // 중앙에 배치
        background.size = size
        background.zPosition = -1 // 다른 노드들 뒤에 배치
        addChild(background)
        
        let label = SKLabelNode(text: "집 (MainScene)")
        label.fontSize = 24
        label.fontColor = .black
        label.position = CGPoint(x: size.width / 2, y: size.height / 2)
        addChild(label)
    }
}
