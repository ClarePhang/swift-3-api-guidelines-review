
@available(OSX 10.6, *)
let calendarIdentifierGregorian: String
@available(OSX 10.6, *)
let calendarIdentifierBuddhist: String
@available(OSX 10.6, *)
let calendarIdentifierChinese: String
@available(OSX 10.6, *)
let calendarIdentifierCoptic: String
@available(OSX 10.6, *)
let calendarIdentifierEthiopicAmeteMihret: String
@available(OSX 10.6, *)
let calendarIdentifierEthiopicAmeteAlem: String
@available(OSX 10.6, *)
let calendarIdentifierHebrew: String
@available(OSX 10.6, *)
let calendarIdentifierISO8601: String
@available(OSX 10.6, *)
let calendarIdentifierIndian: String
@available(OSX 10.6, *)
let calendarIdentifierIslamic: String
@available(OSX 10.6, *)
let calendarIdentifierIslamicCivil: String
@available(OSX 10.6, *)
let calendarIdentifierJapanese: String
@available(OSX 10.6, *)
let calendarIdentifierPersian: String
@available(OSX 10.6, *)
let calendarIdentifierRepublicOfChina: String
@available(OSX 10.10, *)
let calendarIdentifierIslamicTabular: String
@available(OSX 10.10, *)
let calendarIdentifierIslamicUmmAlQura: String
struct CalendarUnit : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Era: CalendarUnit { get }
  static var Year: CalendarUnit { get }
  static var Month: CalendarUnit { get }
  static var Day: CalendarUnit { get }
  static var Hour: CalendarUnit { get }
  static var Minute: CalendarUnit { get }
  static var Second: CalendarUnit { get }
  static var Weekday: CalendarUnit { get }
  static var WeekdayOrdinal: CalendarUnit { get }
  @available(OSX 10.6, *)
  static var Quarter: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfMonth: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var WeekOfYear: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var YearForWeekOfYear: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var Nanosecond: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var Calendar: CalendarUnit { get }
  @available(OSX 10.7, *)
  static var TimeZone: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitEra instead")
  static var eraCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitYear instead")
  static var yearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMonth instead")
  static var monthCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitDay instead")
  static var dayCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitHour instead")
  static var hourCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitMinute instead")
  static var minuteCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitSecond instead")
  static var secondCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth or NSCalendarUnitWeekOfYear, depending on which you mean")
  static var weekCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekday instead")
  static var weekdayCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarUnitWeekdayOrdinal instead")
  static var weekdayOrdinalCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.6, deprecated=10.10, message="Use NSCalendarUnitQuarter instead")
  static var quarterCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfMonth instead")
  static var weekOfMonthCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitWeekOfYear instead")
  static var weekOfYearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitYearForWeekOfYear instead")
  static var yearForWeekOfYearCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitCalendar instead")
  static var calendarCalendarUnit: CalendarUnit { get }
  @available(OSX, introduced=10.7, deprecated=10.10, message="Use NSCalendarUnitTimeZone instead")
  static var timeZoneCalendarUnit: CalendarUnit { get }
}
struct CalendarOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var WrapComponents: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchStrictly: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var SearchBackwards: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchPreviousTimePreservingSmallerUnits: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTimePreservingSmallerUnits: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchNextTime: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchFirst: CalendarOptions { get }
  @available(OSX 10.9, *)
  static var MatchLast: CalendarOptions { get }
}
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSCalendarWrapComponents instead")
var wrapCalendarComponents: Int { get }
class Calendar : Object, Copying, SecureCoding {
  class func current() -> Calendar
  @available(OSX 10.5, *)
  class func autoupdatingCurrent() -> Calendar
  @available(OSX 10.9, *)
  /*not inherited*/ init?(identifier calendarIdentifierConstant: String)
  init?(calendarIdentifier ident: String)
  var calendarIdentifier: String { get }
  @NSCopying var locale: Locale?
  @NSCopying var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  @available(OSX 10.7, *)
  var eraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var longEraSymbols: [String] { get }
  @available(OSX 10.7, *)
  var monthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneMonthSymbols: [String] { get }
  @available(OSX 10.7, *)
  var weekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  @available(OSX 10.7, *)
  var quarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var standaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var shortStandaloneQuarterSymbols: [String] { get }
  @available(OSX 10.7, *)
  var amSymbol: String { get }
  @available(OSX 10.7, *)
  var pmSymbol: String { get }
  func minimumRangeOf(unit: CalendarUnit) -> NSRange
  func maximumRangeOf(unit: CalendarUnit) -> NSRange
  func rangeOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> NSRange
  func ordinalityOf(smaller: CalendarUnit, in larger: CalendarUnit, forDate date: Date) -> Int
  @available(OSX 10.5, *)
  func rangeOf(unit: CalendarUnit, start datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, forDate date: Date) -> Bool
  func dateFrom(comps: DateComponents) -> Date?
  func components(unitFlags: CalendarUnit, from date: Date) -> DateComponents
  func dateByAdding(comps: DateComponents, to date: Date, options opts: CalendarOptions = []) -> Date?
  func components(unitFlags: CalendarUnit, from startingDate: Date, to resultDate: Date, options opts: CalendarOptions = []) -> DateComponents
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, year yearValuePointer: UnsafeMutablePointer<Int>, month monthValuePointer: UnsafeMutablePointer<Int>, day dayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func getEra(eraValuePointer: UnsafeMutablePointer<Int>, yearForWeekOfYear yearValuePointer: UnsafeMutablePointer<Int>, weekOfYear weekValuePointer: UnsafeMutablePointer<Int>, weekday weekdayValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func getHour(hourValuePointer: UnsafeMutablePointer<Int>, minute minuteValuePointer: UnsafeMutablePointer<Int>, second secondValuePointer: UnsafeMutablePointer<Int>, nanosecond nanosecondValuePointer: UnsafeMutablePointer<Int>, from date: Date)
  @available(OSX 10.9, *)
  func component(unit: CalendarUnit, from date: Date) -> Int
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, year yearValue: Int, month monthValue: Int, day dayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(OSX 10.9, *)
  func dateWithEra(eraValue: Int, yearForWeekOfYear yearValue: Int, weekOfYear weekValue: Int, weekday weekdayValue: Int, hour hourValue: Int, minute minuteValue: Int, second secondValue: Int, nanosecond nanosecondValue: Int) -> Date?
  @available(OSX 10.9, *)
  func startOfDayFor(date: Date) -> Date
  @available(OSX 10.9, *)
  func componentsIn(timezone: TimeZone, from date: Date) -> DateComponents
  @available(OSX 10.9, *)
  func compare(date1: Date, to date2: Date, toUnitGranularity unit: CalendarUnit) -> ComparisonResult
  @available(OSX 10.9, *)
  func isDate(date1: Date, equalTo date2: Date, toUnitGranularity unit: CalendarUnit) -> Bool
  @available(OSX 10.9, *)
  func isDate(date1: Date, inSameDayAs date2: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInToday(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInYesterday(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInTomorrow(date: Date) -> Bool
  @available(OSX 10.9, *)
  func isDateInWeekend(date: Date) -> Bool
  @available(OSX 10.9, *)
  func rangeOfWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, containing date: Date) -> Bool
  @available(OSX 10.9, *)
  func nextWeekendStart(datep: AutoreleasingUnsafeMutablePointer<Date?>, interval tip: UnsafeMutablePointer<TimeInterval>, options: CalendarOptions = [], after date: Date) -> Bool
  @available(OSX 10.9, *)
  func components(unitFlags: CalendarUnit, from startingDateComp: DateComponents, to resultDateComp: DateComponents, options: CalendarOptions = []) -> DateComponents
  @available(OSX 10.9, *)
  func dateByAdding(unit: CalendarUnit, value: Int, to date: Date, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func enumerateDatesStartingAfter(start: Date, matching comps: DateComponents, options opts: CalendarOptions = [], usingBlock block: (Date?, Bool, UnsafeMutablePointer<ObjCBool>) -> Void)
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matching comps: DateComponents, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matching unit: CalendarUnit, value: Int, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func nextDateAfter(date: Date, matchingHour hourValue: Int, minute minuteValue: Int, second secondValue: Int, options: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func dateBySettingUnit(unit: CalendarUnit, value v: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func dateBySettingHour(h: Int, minute m: Int, second s: Int, of date: Date, options opts: CalendarOptions = []) -> Date?
  @available(OSX 10.9, *)
  func date(date: Date, matchesComponents components: DateComponents) -> Bool
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(OSX 10.9, *)
let calendarDayChangedNotification: String
var dateComponentUndefined: Int { get }
@available(OSX, introduced=10.4, deprecated=10.10, message="Use NSDateComponentUndefined instead")
var undefinedDateComponent: Int { get }
class DateComponents : Object, Copying, SecureCoding {
  @available(OSX 10.7, *)
  @NSCopying var calendar: Calendar?
  @available(OSX 10.7, *)
  @NSCopying var timeZone: TimeZone?
  var era: Int
  var year: Int
  var month: Int
  var day: Int
  var hour: Int
  var minute: Int
  var second: Int
  @available(OSX 10.7, *)
  var nanosecond: Int
  var weekday: Int
  var weekdayOrdinal: Int
  @available(OSX 10.6, *)
  var quarter: Int
  @available(OSX 10.7, *)
  var weekOfMonth: Int
  @available(OSX 10.7, *)
  var weekOfYear: Int
  @available(OSX 10.7, *)
  var yearForWeekOfYear: Int
  @available(OSX 10.8, *)
  var isLeapMonth: Bool
  @available(OSX 10.7, *)
  @NSCopying var date: Date? { get }
  @available(OSX 10.9, *)
  func setValue(value: Int, forComponent unit: CalendarUnit)
  @available(OSX 10.9, *)
  func valueForComponent(unit: CalendarUnit) -> Int
  @available(OSX 10.9, *)
  var isValidDate: Bool { get }
  @available(OSX 10.9, *)
  func isValidDateIn(calendar: Calendar) -> Bool
  init()
  func copy(zone zone: Zone = nil) -> AnyObject
  class func supportsSecureCoding() -> Bool
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}