import GameplayKit
import SpriteKit

class Plane : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.y <= -748)
        {
            position.y = -748
        }
        
        if(position.y >= 748)
        {
            position.y = 748
        }
    }
    
    override func Reset()
    {
        position.x = -255
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
    
}
