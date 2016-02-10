
@available(iOS 5.0, *)
enum GLKVertexAttrib : GLint {
  init?(rawValue: GLint)
  var rawValue: GLint { get }
  case position
  case normal
  case color
  case texCoord0
  case texCoord1
}
