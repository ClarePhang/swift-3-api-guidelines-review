
@available(tvOS 8.0, *)
class SKShader : Object, Copying, Coding {
  init(source: String)
  init(source: String, uniforms: [SKUniform])
  convenience init(fileNamed name: String)
  var source: String?
  var uniforms: [SKUniform]
  func addUniform(uniform: SKUniform)
  func uniformNamed(name: String) -> SKUniform?
  func removeUniformNamed(name: String)
  init()
  @available(tvOS 8.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
  @available(tvOS 8.0, *)
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}