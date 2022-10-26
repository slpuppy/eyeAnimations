//
//  GameScene.swift
//  cryingApp
//
//  Created by Gabriel Puppi on 25/10/22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var eyeNode: SKSpriteNode!
    private var animationManager: AnimationManager!
    
    override func didMove(to view: SKView) {
        self.backgroundColor = .black
        eyeNode = SKSpriteNode(imageNamed: "closedEye1")
        addChild(eyeNode)
        setupAnimationManager()
        animateEyeNode()
    }
    
    func setupAnimationManager(){
        self.animationManager = AnimationManager(node: eyeNode)
    }
    
    func animateEyeNode(){
        let animatedList = animationManager.animateTextureList(list: Frames.TextureList.closed.textures)
        let loop = animationManager.loopLast()
        let sequence = SKAction.sequence([animatedList, loop])
        eyeNode.run(sequence)
        
    }
    
    func openEye() {
        let animatedList = animationManager.animateTextureList(list: Frames.TextureList.opening.textures)
        let loop = animationManager.loopLast()
        let sequence = SKAction.sequence([animatedList, loop])
        eyeNode.run(sequence)
    }
    
    func blink(){
        let animatedList = animationManager.animateTextureList(list: Frames.TextureList.blink.textures)
        let loop = animationManager.loopLast()
        let sequence = SKAction.sequence([animatedList, loop])
        eyeNode.run(sequence)
    }
    
    func tearyEye(){
        let animatedList = animationManager.animateTextureList(list: Frames.TextureList.teary.textures)
        let loop = animationManager.loopLast()
        let sequence = SKAction.sequence([animatedList, loop])
        eyeNode.run(sequence)
    }
    
    func fadeOut(){
       
        animationManager.fadeOutNode()
    }
    
    func setupAct2(){
        eyeNode.setScale(2.0)
        tearyEye()
        
    }
    
   
    
    
    
    
    func touchDown(atPoint pos : CGPoint) {
      
    }
    
    func touchMoved(toPoint pos : CGPoint) {
      
    }
    
    func touchUp(atPoint pos : CGPoint) {
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        setupAct2()
        }
        
       
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
