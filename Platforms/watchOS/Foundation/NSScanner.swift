
class Scanner : Object, Copying {
  var string: String { get }
  var scanLocation: Int
  @NSCopying var charactersToBeSkipped: CharacterSet?
  var caseSensitive: Bool
  var locale: AnyObject?
  init(string: String)
  convenience init()
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension Scanner {
  func scanInt(result: UnsafeMutablePointer<Int32>) -> Bool
  @available(watchOS 2.0, *)
  func scanInteger(result: UnsafeMutablePointer<Int>) -> Bool
  func scanLongLong(result: UnsafeMutablePointer<Int64>) -> Bool
  @available(watchOS 2.0, *)
  func scanUnsignedLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  func scanFloat(result: UnsafeMutablePointer<Float>) -> Bool
  func scanDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanHexInt(result: UnsafeMutablePointer<UInt32>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexLongLong(result: UnsafeMutablePointer<UInt64>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexFloat(result: UnsafeMutablePointer<Float>) -> Bool
  @available(watchOS 2.0, *)
  func scanHexDouble(result: UnsafeMutablePointer<Double>) -> Bool
  func scanString(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpTo(string: String, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  func scanUpToCharactersFrom(set: CharacterSet, into result: AutoreleasingUnsafeMutablePointer<NSString?>) -> Bool
  var isAtEnd: Bool { get }
  class func localizedScannerWith(string: String) -> AnyObject
}