import Foundation

public struct AppLoadingState: Equatable {
    var isLoading: Bool

    public init(
        isLoading: Bool = false
    ) {
        self.isLoading = isLoading
    }
}
