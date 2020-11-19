import ComposableArchitecture
import Foundation

typealias AppLoadingReducer = Reducer<AppLoadingState, AppLoadingAction, AppLoadingEnvironment>

let appLoadingReducer = AppLoadingReducer { state, action, environment in
    switch action {
    case .deleteMe:
        return .none
    }
}
