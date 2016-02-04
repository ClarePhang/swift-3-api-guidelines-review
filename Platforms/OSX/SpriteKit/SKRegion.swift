
@available(OSX 10.10, *)
class SKRegion : Object, Copying, Coding {
  var path: CGPath? { get }
  class func infinite() -> Self
  init(radius: Float)
  init(size: CGSize)
  init(path: CGPath)
  func inverse() -> Self
  func byUnionWith(region: SKRegion) -> Self
  func byDifferenceFrom(region: SKRegion) -> Self
  func byIntersectionWith(region: SKRegion) -> Self
  func contains(point: CGPoint) -> Bool
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(OSX 10.10, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}