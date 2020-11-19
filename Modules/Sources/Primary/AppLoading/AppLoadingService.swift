import Combine
import Foundation

struct AppLoadingService {}

#if DEBUG
extension AppLoadingService {
    static let mock = Self()

    static let empty = Self()
}
#endif
