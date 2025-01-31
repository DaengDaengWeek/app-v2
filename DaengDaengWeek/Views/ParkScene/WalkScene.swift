//
//  WalkScene.swift
//  DaengDaengWeek
//
//  Created by Jini on 1/12/25.
//

import SwiftUI
import SpriteKit

class WalkScene: SKScene {
    var background1: SKSpriteNode!
    var background2: SKSpriteNode!
    
    let backgroundSpeed: CGFloat = 2.0
    
    override func didMove(to view: SKView) {
        setupScene()
    }
    
    private func setupScene() {
        background1 = SKSpriteNode(imageNamed: "walk_bg")
        background1.anchorPoint = CGPoint(x: 0, y: 0.5)
        background1.position = CGPoint(x: 0, y: size.height / 2)

        background2 = SKSpriteNode(imageNamed: "walk_bg")
        background2.anchorPoint = CGPoint(x: 0, y: 0.5)
        background2.position = CGPoint(x: background1.size.width, y: size.height / 2)

        addChild(background1)
        addChild(background2)
    }
    
    override func update(_ currentTime: TimeInterval) {
        moveBackground()
    }
    
    private func moveBackground() {
        // 배경을 왼쪽으로 이동
        background1.position.x -= backgroundSpeed
        background2.position.x -= backgroundSpeed

        let backgroundWidth = background1.size.width

        if background1.position.x <= -backgroundWidth {
            background1.position.x = background2.position.x + backgroundWidth
        }

        if background2.position.x <= -backgroundWidth {
            background2.position.x = background1.position.x + backgroundWidth
        }
    }
}
