
@available(OSX 10.4, *)
class DOMCSSRuleList : DOMObject {
  var length: UInt32 { get }
  func item(index: UInt32) -> DOMCSSRule!
}