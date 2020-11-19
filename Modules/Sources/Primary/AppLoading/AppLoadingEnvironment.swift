import ComposableArchitecture
import Foundation

struct AppLoadingEnvironment {
    let mainQueue: AnySchedulerOf<DispatchQueue>
    let service: AppLoadingService
}
