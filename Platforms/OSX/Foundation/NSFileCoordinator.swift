
struct FileCoordinatorReadingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var withoutChanges: FileCoordinatorReadingOptions { get }
  static var resolvesSymbolicLink: FileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var immediatelyAvailableMetadataOnly: FileCoordinatorReadingOptions { get }
  @available(OSX 10.10, *)
  static var forUploading: FileCoordinatorReadingOptions { get }
}
struct FileCoordinatorWritingOptions : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var forDeleting: FileCoordinatorWritingOptions { get }
  static var forMoving: FileCoordinatorWritingOptions { get }
  static var forMerging: FileCoordinatorWritingOptions { get }
  static var forReplacing: FileCoordinatorWritingOptions { get }
  @available(OSX 10.10, *)
  static var contentIndependentMetadataOnly: FileCoordinatorWritingOptions { get }
}
@available(OSX 10.10, *)
class FileAccessIntent : Object {
  class func readingIntentWith(url: URL, options: FileCoordinatorReadingOptions = []) -> Self
  class func writingIntentWith(url: URL, options: FileCoordinatorWritingOptions = []) -> Self
  @NSCopying var url: URL { get }
  init()
}
@available(OSX 10.7, *)
class FileCoordinator : Object {
  class func addFilePresenter(filePresenter: FilePresenter)
  class func removeFilePresenter(filePresenter: FilePresenter)
  class func filePresenters() -> [FilePresenter]
  init(filePresenter filePresenterOrNil: FilePresenter?)
  @available(OSX 10.7, *)
  var purposeIdentifier: String
  @available(OSX 10.10, *)
  func coordinateAccessWith(intents: [FileAccessIntent], queue: OperationQueue, byAccessor accessor: (Error?) -> Void)
  func coordinateReadingItemAt(url: URL, options: FileCoordinatorReadingOptions = [], error outError: ErrorPointer, byAccessor reader: (URL) -> Void)
  func coordinateWritingItemAt(url: URL, options: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL) -> Void)
  func coordinateReadingItemAt(readingURL: URL, options readingOptions: FileCoordinatorReadingOptions = [], writingItemAt writingURL: URL, options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor readerWriter: (URL, URL) -> Void)
  func coordinateWritingItemAt(url1: URL, options options1: FileCoordinatorWritingOptions = [], writingItemAt url2: URL, options options2: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor writer: (URL, URL) -> Void)
  func prepareForReadingItemsAt(readingURLs: [URL], options readingOptions: FileCoordinatorReadingOptions = [], writingItemsAt writingURLs: [URL], options writingOptions: FileCoordinatorWritingOptions = [], error outError: ErrorPointer, byAccessor batchAccessor: (() -> Void) -> Void)
  @available(OSX 10.8, *)
  func itemAt(oldURL: URL, willMoveTo newURL: URL)
  func itemAt(oldURL: URL, didMoveTo newURL: URL)
  func cancel()
  convenience init()
}
