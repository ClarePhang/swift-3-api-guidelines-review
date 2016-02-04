
func MPSSupportsMTLDevice(device: MTLDevice?) -> Bool
@available(tvOS 9.0, *)
class MPSKernel : Object, Copying {
  var options: MPSKernelOptions
  var device: MTLDevice { get }
  var label: String?
  init(device: MTLDevice)
  func copy(zone zone: Zone = nil, device: MTLDevice?) -> Self
  convenience init()
  @available(tvOS 9.0, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}