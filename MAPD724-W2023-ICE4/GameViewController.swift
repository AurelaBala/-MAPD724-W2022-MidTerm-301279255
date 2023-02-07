//
//  GameViewController.swift
//  MAPD724-W2023-ICE-1A
//
//  Created by Aurela Bala on 2023-01-16.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController
{

    @IBOutlet weak var LivesLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    var currentScene: GKScene?
   
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
    
        setScene(sceneName: "EndScene")
        
        //initialize the Lives and Score
        CollisionManager.gameViewController = self
        ScoreManager.Score = 0
        ScoreManager.Lives = 5
        updateLivesLabel()
        updateScoreLabel()
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
    {
       
            return .portrait
    }

    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    func updateScoreLabel()
    {
        ScoreLabel.text = "Score: \(ScoreManager.Score)"
    }
    
    func updateLivesLabel()
    {
        LivesLabel.text = "Lives: \(ScoreManager.Lives)"
    }
    
    func setScene(sceneName: String) -> Void
    {
        
        currentScene = GKScene(fileNamed: sceneName)
            
        if let scene = currentScene!.rootNode as! SKScene?
            {
        
                scene.scaleMode = .aspectFill
                
                if let view = self.view as! SKView?
                {
                    view.presentScene(scene)
                    view.ignoresSiblingOrder = true
        
                }
            }
        
    }
}
