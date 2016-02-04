
@available(watchOS 2.0, *)
class WKImage : Object, Copying, SecureCoding {
  convenience init(image: UIImage)
  convenience init(imageData: Data)
  convenience init(imageName: String)
  var image: UIImage? { get }
  var imageData: Data? { get }
  var imageName: String? { get }
  @available(watchOS 2.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(watchOS 2.0, *)
  class func supportsSecureCoding() -> Bool
  @available(watchOS 2.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}