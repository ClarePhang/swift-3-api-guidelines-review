
@available(tvOS 7.0, *)
enum UITabBarItemPositioning : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Automatic
  case Fill
  case Centered
}
@available(tvOS 2.0, *)
class UITabBar : UIView {
  unowned(unsafe) var delegate: @sil_unmanaged UITabBarDelegate?
  var items: [UITabBarItem]?
  unowned(unsafe) var selectedItem: @sil_unmanaged UITabBarItem?
  func setItems(items: [UITabBarItem]?, animated: Bool)
  @available(tvOS 5.0, *)
  var tintColor: UIColor!
  @available(tvOS 7.0, *)
  var barTintColor: UIColor?
  @available(tvOS 5.0, *)
  var backgroundImage: UIImage?
  @available(tvOS 5.0, *)
  var selectionIndicatorImage: UIImage?
  @available(tvOS 6.0, *)
  var shadowImage: UIImage?
  @available(tvOS 7.0, *)
  var itemWidth: CGFloat
  @available(tvOS 7.0, *)
  var itemSpacing: CGFloat
  @available(tvOS 7.0, *)
  var isTranslucent: Bool
  init(frame: CGRect)
  init?(coder aDecoder: Coder)
  convenience init()
}
protocol UITabBarDelegate : ObjectProtocol {
  @available(tvOS 2.0, *)
  optional func tabBar(tabBar: UITabBar, didSelect item: UITabBarItem)
}