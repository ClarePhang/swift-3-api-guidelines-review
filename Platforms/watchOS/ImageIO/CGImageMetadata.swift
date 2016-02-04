
class CGImageMetadata {
}
func CGImageMetadataGetTypeID() -> CFTypeID
class CGMutableImageMetadata {
}
@available(watchOS 2.0, *)
func CGImageMetadataCreateMutable() -> CGMutableImageMetadata
@available(watchOS 2.0, *)
func CGImageMetadataCreateMutableCopy(metadata: CGImageMetadata) -> CGMutableImageMetadata?
class CGImageMetadataTag {
}
@available(watchOS 2.0, *)
func CGImageMetadataTagGetTypeID() -> CFTypeID
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceExif: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceExifAux: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceExifEX: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceDublinCore: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceIPTCCore: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespacePhotoshop: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceTIFF: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceXMPBasic: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataNamespaceXMPRights: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixExif: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixExifAux: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixExifEX: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixDublinCore: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixIPTCCore: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixPhotoshop: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixTIFF: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixXMPBasic: CFString
@available(watchOS 2.0, *)
let kCGImageMetadataPrefixXMPRights: CFString
enum CGImageMetadataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Invalid
  case Default
  case String
  case ArrayUnordered
  case ArrayOrdered
  case AlternateArray
  case AlternateText
  case Structure
}
@available(watchOS 2.0, *)
func CGImageMetadataTagCreate(xmlns: CFString, _ prefix: CFString?, _ name: CFString, _ type: CGImageMetadataType, _ value: CFTypeRef) -> CGImageMetadataTag?
@available(watchOS 2.0, *)
func CGImageMetadataTagCopyNamespace(tag: CGImageMetadataTag) -> CFString?
@available(watchOS 2.0, *)
func CGImageMetadataTagCopyPrefix(tag: CGImageMetadataTag) -> CFString?
@available(watchOS 2.0, *)
func CGImageMetadataTagCopyName(tag: CGImageMetadataTag) -> CFString?
@available(watchOS 2.0, *)
func CGImageMetadataTagCopyValue(tag: CGImageMetadataTag) -> CFTypeRef?
@available(watchOS 2.0, *)
func CGImageMetadataTagGetType(tag: CGImageMetadataTag) -> CGImageMetadataType
@available(watchOS 2.0, *)
func CGImageMetadataTagCopyQualifiers(tag: CGImageMetadataTag) -> CFArray?
@available(watchOS 2.0, *)
func CGImageMetadataCopyTags(metadata: CGImageMetadata) -> CFArray?
@available(watchOS 2.0, *)
func CGImageMetadataCopyTagWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CGImageMetadataTag?
@available(watchOS 2.0, *)
func CGImageMetadataCopyStringValueWithPath(metadata: CGImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> CFString?
@available(watchOS 2.0, *)
func CGImageMetadataRegisterNamespaceForPrefix(metadata: CGMutableImageMetadata, _ xmlns: CFString, _ prefix: CFString, _ err: UnsafeMutablePointer<Unmanaged<CFError>?>) -> Bool
@available(watchOS 2.0, *)
func CGImageMetadataSetTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ tag: CGImageMetadataTag) -> Bool
@available(watchOS 2.0, *)
func CGImageMetadataSetValueWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString, _ value: CFTypeRef) -> Bool
@available(watchOS 2.0, *)
func CGImageMetadataRemoveTagWithPath(metadata: CGMutableImageMetadata, _ parent: CGImageMetadataTag?, _ path: CFString) -> Bool
typealias CGImageMetadataTagBlock = (CFString, CGImageMetadataTag) -> Bool
@available(watchOS 2.0, *)
func CGImageMetadataEnumerateTagsUsingBlock(metadata: CGImageMetadata, _ rootPath: CFString?, _ options: CFDictionary?, _ block: CGImageMetadataTagBlock)
@available(watchOS 2.0, *)
let kCGImageMetadataEnumerateRecursively: CFString
@available(watchOS 2.0, *)
func CGImageMetadataCopyTagMatchingImageProperty(metadata: CGImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString) -> CGImageMetadataTag?
@available(watchOS 2.0, *)
func CGImageMetadataSetValueMatchingImageProperty(metadata: CGMutableImageMetadata, _ dictionaryName: CFString, _ propertyName: CFString, _ value: CFTypeRef) -> Bool
@available(watchOS 2.0, *)
func CGImageMetadataCreateXMPData(metadata: CGImageMetadata, _ options: CFDictionary?) -> CFData?
@available(watchOS 2.0, *)
func CGImageMetadataCreateFromXMPData(data: CFData) -> CGImageMetadata?
let kCFErrorDomainCGImageMetadata: CFString
enum CGImageMetadataErrors : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case Unknown
  case UnsupportedFormat
  case BadArgument
  case ConflictingArguments
  case PrefixConflict
}