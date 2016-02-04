
@available(OSX 10.9, *)
enum SKBlendMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Alpha
  case Add
  case Subtract
  case Multiply
  case MultiplyX2
  case Screen
  case Replace
}
class SKNode : NSResponder, Copying, Coding {
  init()
  init?(coder aDecoder: Coder)
  convenience init?(fileNamed filename: String)
  var frame: CGRect { get }
  func calculateAccumulatedFrame() -> CGRect
  var position: CGPoint
  var zPosition: CGFloat
  var zRotation: CGFloat
  var xScale: CGFloat
  var yScale: CGFloat
  var speed: CGFloat
  var alpha: CGFloat
  var isPaused: Bool
  var isHidden: Bool
  var isUserInteractionEnabled: Bool
  var parent: SKNode? { get }
  var children: [SKNode] { get }
  var name: String?
  var scene: SKScene? { get }
  var physicsBody: SKPhysicsBody?
  var userData: MutableDictionary?
  @NSCopying var reachConstraints: SKReachConstraints?
  var constraints: [SKConstraint]?
  func setScale(scale: CGFloat)
  func addChild(node: SKNode)
  func insertChild(node: SKNode, at index: Int)
  func removeChildrenIn(nodes: [SKNode])
  func removeAllChildren()
  func removeFromParent()
  func moveToParent(parent: SKNode)
  func childNodeWithName(name: String) -> SKNode?
  func enumerateChildNodesWithName(name: String, usingBlock block: (SKNode, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.10, *)
  subscript (name: String) -> [SKNode] { get }
  func inParentHierarchy(parent: SKNode) -> Bool
  func run(action: SKAction)
  func run(action: SKAction, completion block: () -> Void)
  func run(action: SKAction, withKey key: String)
  func hasActions() -> Bool
  func actionForKey(key: String) -> SKAction?
  func removeActionForKey(key: String)
  func removeAllActions()
  func contains(p: CGPoint) -> Bool
  func atPoint(p: CGPoint) -> SKNode
  func nodesAt(p: CGPoint) -> [SKNode]
  func convert(point: CGPoint, from node: SKNode) -> CGPoint
  func convert(point: CGPoint, to node: SKNode) -> CGPoint
  func intersectsNode(node: SKNode) -> Bool
  func isEqualTo(node: SKNode) -> Bool
  class func obstaclesFromSpriteTextures(sprites: [SKNode], accuracy: Float) -> [AnyObject]
  class func obstaclesFromNodeBounds(nodes: [SKNode]) -> [AnyObject]
  class func obstaclesFromNodePhysicsBodies(nodes: [SKNode]) -> [AnyObject]
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension NSEvent {
  func locationIn(node: SKNode) -> CGPoint
}