import ComposableArchitecture
import Foundation

public typealias AppLoadingReducer = Reducer<
    AppLoadingState,
    AppLoadingAction,
    AppLoadingEnvironment
>

public let appLoadingReducer = AppLoadingReducer { state, action, environment in
    switch action {
    case .deleteMe:
        return .none
    }
}
