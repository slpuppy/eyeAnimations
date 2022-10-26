//
//  AnimationManager.swift
//  cryingApp
//
//  Created by Gabriel Puppi on 25/10/22.
//

import Foundation
import SpriteKit

class AnimationManager {
    
    var node: SKSpriteNode
    var currentList: [SKTexture] = [SKTexture]()
   
    init(node: SKSpriteNode) {
        self.node = node
  }
   
    func animateTwoFrames(texture1: SKTexture, texture2: SKTexture) {
        let animation = SKAction.repeatForever(.sequence([.setTexture(texture2),.wait(forDuration: 0.3), .setTexture(texture1),.wait(forDuration: 0.3)]))
        node.run(animation)
        
    }
    
    func animateTextureList(list: [SKTexture]) -> SKAction {
        currentList = list
        node.removeAllActions()
        let animation = SKAction.animate(with: list, timePerFrame: 0.15, resize: false, restore: true)
        return animation
    }
    
    func loopLast() -> SKAction {
        node.removeAllActions()
        let loop = Array(currentList.suffix(2))
        return loopList(list: loop)
   }
    
    
    private func loopList(list: [SKTexture]) -> SKAction {
        currentList = list
        node.removeAllActions()
        let loop = SKAction.repeatForever(.animate(with: list, timePerFrame: 0.2, resize: false, restore: true))
       return loop
        
    }
    
    func fadeOutNode() {
        node.removeAllActions()
        node.run(.fadeOut(withDuration: 1.5))
    }
    
 
    

    
    
    
    
    
    
    
    
    
}
