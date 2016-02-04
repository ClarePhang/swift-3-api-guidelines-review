
@available(OSX 10.8, *)
class EKRecurrenceDayOfWeek : Object, Copying {
  convenience init(_ dayOfTheWeek: EKWeekday)
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)
  var dayOfTheWeek: EKWeekday { get }
  var weekNumber: Int { get }
  init()
  @available(OSX 10.8, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}