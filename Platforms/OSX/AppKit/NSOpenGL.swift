
var NSOPENGL_CURRENT_VERSION: Int32 { get }
struct NSOpenGLGlobalOption : RawRepresentable, Equatable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var NSOpenGLGOFormatCacheSize: NSOpenGLGlobalOption { get }
var NSOpenGLGOClearFormatCache: NSOpenGLGlobalOption { get }
var NSOpenGLGORetainRenderers: NSOpenGLGlobalOption { get }
var NSOpenGLGOUseBuildCache: NSOpenGLGlobalOption { get }
func NSOpenGLSetOption(pname: NSOpenGLGlobalOption, _ param: GLint)
func NSOpenGLGetOption(pname: NSOpenGLGlobalOption, _ param: UnsafeMutablePointer<GLint>)
func NSOpenGLGetVersion(major: UnsafeMutablePointer<GLint>, _ minor: UnsafeMutablePointer<GLint>)
var NSOpenGLPFAAllRenderers: Int { get }
var NSOpenGLPFATripleBuffer: Int { get }
var NSOpenGLPFADoubleBuffer: Int { get }
var NSOpenGLPFAStereo: Int { get }
var NSOpenGLPFAAuxBuffers: Int { get }
var NSOpenGLPFAColorSize: Int { get }
var NSOpenGLPFAAlphaSize: Int { get }
var NSOpenGLPFADepthSize: Int { get }
var NSOpenGLPFAStencilSize: Int { get }
var NSOpenGLPFAAccumSize: Int { get }
var NSOpenGLPFAMinimumPolicy: Int { get }
var NSOpenGLPFAMaximumPolicy: Int { get }
var NSOpenGLPFASampleBuffers: Int { get }
var NSOpenGLPFASamples: Int { get }
var NSOpenGLPFAAuxDepthStencil: Int { get }
var NSOpenGLPFAColorFloat: Int { get }
var NSOpenGLPFAMultisample: Int { get }
var NSOpenGLPFASupersample: Int { get }
var NSOpenGLPFASampleAlpha: Int { get }
var NSOpenGLPFARendererID: Int { get }
var NSOpenGLPFANoRecovery: Int { get }
var NSOpenGLPFAAccelerated: Int { get }
var NSOpenGLPFAClosestPolicy: Int { get }
var NSOpenGLPFABackingStore: Int { get }
var NSOpenGLPFAScreenMask: Int { get }
@available(OSX 10.5, *)
var NSOpenGLPFAAllowOfflineRenderers: Int { get }
var NSOpenGLPFAAcceleratedCompute: Int { get }
var NSOpenGLPFAVirtualScreenCount: Int { get }
@available(OSX 10.7, *)
var NSOpenGLPFAOpenGLProfile: Int { get }
typealias NSOpenGLPixelFormatAttribute = UInt32
@available(OSX 10.7, *)
var NSOpenGLProfileVersionLegacy: Int { get }
@available(OSX 10.7, *)
var NSOpenGLProfileVersion3_2Core: Int { get }
@available(OSX 10.10, *)
var NSOpenGLProfileVersion4_1Core: Int { get }
class NSOpenGLPixelFormat : Object, Coding {
  init?(attributes attribs: UnsafePointer<NSOpenGLPixelFormatAttribute>)
  @available(OSX 10.6, *)
  init?(cglPixelFormatObj format: COpaquePointer)
  func getValues(vals: UnsafeMutablePointer<GLint>, forAttribute attrib: NSOpenGLPixelFormatAttribute, forVirtualScreen screen: GLint)
  var numberOfVirtualScreens: GLint { get }
  var cglPixelFormatObj: COpaquePointer { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
enum NSOpenGLContextParameter : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case GLCPSwapInterval
  case GLCPSurfaceOrder
  case GLCPSurfaceOpacity
  case GLCPSurfaceBackingSize
  case GLCPReclaimResources
  case GLCPCurrentRendererID
  case GLCPGPUVertexProcessing
  case GLCPGPUFragmentProcessing
  case GLCPHasDrawable
  case GLCPMPSwapsInFlight
  case GLCPSwapRectangle
  case GLCPSwapRectangleEnable
  case GLCPRasterizationEnable
  case GLCPStateValidation
  case GLCPSurfaceSurfaceVolatile
}
typealias NSOpenGLContextAuxiliary = _CGLContextObject
class NSOpenGLContext : Object, Locking {
  init?(format: NSOpenGLPixelFormat, share: NSOpenGLContext?)
  @available(OSX 10.6, *)
  init?(cglContextObj context: UnsafeMutablePointer<_CGLContextObject>)
  @available(OSX 10.10, *)
  var pixelFormat: NSOpenGLPixelFormat { get }
  unowned(unsafe) var view: @sil_unmanaged NSView?
  func clearDrawable()
  func update()
  func flushBuffer()
  func makeCurrentContext()
  class func clearCurrentContext()
  class func current() -> NSOpenGLContext?
  func setValues(vals: UnsafePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  func getValues(vals: UnsafeMutablePointer<GLint>, forParameter param: NSOpenGLContextParameter)
  var currentVirtualScreen: GLint
  var cglContextObj: UnsafeMutablePointer<_CGLContextObject> { get }
  init()
  func lock()
  func unlock()
}
extension NSOpenGLContext {
}