import ComposableArchitecture
import Foundation

public struct AppLoadingEnvironment {
    let mainQueue: AnySchedulerOf<DispatchQueue>
    let service: AppLoadingService

    public init(
        mainQueue: AnySchedulerOf<DispatchQueue>,
        service: AppLoadingService
    ) {
        self.mainQueue = mainQueue
        self.service = service
    }
}
