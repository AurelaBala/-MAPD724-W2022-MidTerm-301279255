import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        Reset()
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -1321)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 1321
    }
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
