import Combine
import Foundation
import Tokens

public struct AppLoadingService {
    let fetchPalette: () -> AnyPublisher<Palette, Error>

    public init(
        fetchPalette: @escaping () -> AnyPublisher<Palette, Error>
    ) {
        self.fetchPalette = fetchPalette
    }
}

public extension AppLoadingService {
    static let live: Self = .init(
        fetchPalette: {
            Just(.default)
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
    )
}

#if DEBUG
public extension AppLoadingService {
    static let mock: Self = .init(
        fetchPalette: {
            Just(.default)
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
        }
    )
}
#endif
