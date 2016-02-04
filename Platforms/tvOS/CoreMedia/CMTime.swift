
typealias CMTimeValue = Int64
typealias CMTimeScale = Int32
var kCMTimeMaxTimescale: Int { get }
typealias CMTimeEpoch = Int64
struct CMTimeFlags : OptionSetType {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var Valid: CMTimeFlags { get }
  static var HasBeenRounded: CMTimeFlags { get }
  static var PositiveInfinity: CMTimeFlags { get }
  static var NegativeInfinity: CMTimeFlags { get }
  static var Indefinite: CMTimeFlags { get }
  static var ImpliedValueFlagsMask: CMTimeFlags { get }
}
struct CMTime {
  var value: CMTimeValue
  var timescale: CMTimeScale
  var flags: CMTimeFlags
  var epoch: CMTimeEpoch
  init()
  init(value: CMTimeValue, timescale: CMTimeScale, flags: CMTimeFlags, epoch: CMTimeEpoch)
}

extension CMTime {
  init(seconds: Double, preferredTimescale: CMTimeScale)
  init(value: CMTimeValue, timescale: CMTimeScale)
}

extension CMTime {
  var isValid: Bool { get }
  var isPositiveInfinity: Bool { get }
  var isNegativeInfinity: Bool { get }
  var isIndefinite: Bool { get }
  var isNumeric: Bool { get }
  var hasBeenRounded: Bool { get }
  var seconds: Double { get }
  func convertScale(newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}

extension CMTime : Equatable, Comparable {
}
@available(tvOS 4.0, *)
let kCMTimeInvalid: CMTime
@available(tvOS 4.0, *)
let kCMTimeIndefinite: CMTime
@available(tvOS 4.0, *)
let kCMTimePositiveInfinity: CMTime
@available(tvOS 4.0, *)
let kCMTimeNegativeInfinity: CMTime
@available(tvOS 4.0, *)
let kCMTimeZero: CMTime
@available(tvOS 4.0, *)
func CMTimeMake(value: Int64, _ timescale: Int32) -> CMTime
@available(tvOS 4.0, *)
func CMTimeMakeWithEpoch(value: Int64, _ timescale: Int32, _ epoch: Int64) -> CMTime
@available(tvOS 4.0, *)
func CMTimeMakeWithSeconds(seconds: Float64, _ preferredTimeScale: Int32) -> CMTime
@available(tvOS 4.0, *)
func CMTimeGetSeconds(time: CMTime) -> Float64
enum CMTimeRoundingMethod : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case RoundHalfAwayFromZero
  case RoundTowardZero
  case RoundAwayFromZero
  case QuickTime
  case RoundTowardPositiveInfinity
  case RoundTowardNegativeInfinity
  static var Default: CMTimeRoundingMethod { get }
}
@available(tvOS 4.0, *)
func CMTimeConvertScale(time: CMTime, _ newTimescale: Int32, _ method: CMTimeRoundingMethod) -> CMTime
@available(tvOS 4.0, *)
func CMTimeAdd(addend1: CMTime, _ addend2: CMTime) -> CMTime
@available(tvOS 4.0, *)
func CMTimeSubtract(minuend: CMTime, _ subtrahend: CMTime) -> CMTime
@available(tvOS 4.0, *)
func CMTimeMultiply(time: CMTime, _ multiplier: Int32) -> CMTime
@available(tvOS 4.0, *)
func CMTimeMultiplyByFloat64(time: CMTime, _ multiplier: Float64) -> CMTime
@available(tvOS 7.1, *)
func CMTimeMultiplyByRatio(time: CMTime, _ multiplier: Int32, _ divisor: Int32) -> CMTime
@available(tvOS 4.0, *)
func CMTimeCompare(time1: CMTime, _ time2: CMTime) -> Int32
@available(tvOS 4.0, *)
func CMTimeMinimum(time1: CMTime, _ time2: CMTime) -> CMTime
@available(tvOS 4.0, *)
func CMTimeMaximum(time1: CMTime, _ time2: CMTime) -> CMTime
@available(tvOS 4.0, *)
func CMTimeAbsoluteValue(time: CMTime) -> CMTime
@available(tvOS 4.0, *)
func CMTimeCopyAsDictionary(time: CMTime, _ allocator: CFAllocator?) -> CFDictionary?
@available(tvOS 4.0, *)
func CMTimeMakeFromDictionary(dict: CFDictionary?) -> CMTime
@available(tvOS 4.0, *)
let kCMTimeValueKey: CFString
@available(tvOS 4.0, *)
let kCMTimeScaleKey: CFString
@available(tvOS 4.0, *)
let kCMTimeEpochKey: CFString
@available(tvOS 4.0, *)
let kCMTimeFlagsKey: CFString
@available(tvOS 4.0, *)
func CMTimeCopyDescription(allocator: CFAllocator?, _ time: CMTime) -> CFString?
@available(tvOS 4.0, *)
func CMTimeShow(time: CMTime)