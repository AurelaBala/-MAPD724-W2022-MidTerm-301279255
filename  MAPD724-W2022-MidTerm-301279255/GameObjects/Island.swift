import GameplayKit
import SpriteKit

class Island : GameObject
{
    //initializer
    init()
    {
        super.init(imageString: "island", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //lifecycle functions
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
       Move()
        CheckBounds()
    }
    
    
    override func CheckBounds()
    {
        if(position.x <= -449)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 449
        //get a random number from -313 to 313
        let randomY:Int = (randomSource?.nextInt(upperBound: 1580))! - 790
        position.y = CGFloat(randomY)
        isColliding = false
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
    
}
