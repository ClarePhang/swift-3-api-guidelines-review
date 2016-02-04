
@available(OSX 10.10, *)
class GKSavedGame : Object, Copying {
  @available(OSX 10.10, *)
  var name: String? { get }
  @available(OSX 10.10, *)
  var deviceName: String? { get }
  @available(OSX 10.10, *)
  var modificationDate: Date? { get }
  @available(OSX 10.10, *)
  func loadData(completionHandler handler: ((Data?, Error?) -> Void)? = nil)
  init()
  @available(OSX 10.10, *)
  func copy(zone zone: Zone = nil) -> AnyObject
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(OSX 10.10, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func saveGameData(data: Data, withName name: String, completionHandler handler: ((GKSavedGame?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func deleteSavedGamesWithName(name: String, completionHandler handler: ((Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func resolveConflictingSavedGames(conflictingSavedGames: [GKSavedGame], withData data: Data, completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, didModifySavedGame savedGame: GKSavedGame)
  @available(OSX 10.10, *)
  func player(player: GKPlayer, hasConflictingSavedGames savedGames: [GKSavedGame])
}