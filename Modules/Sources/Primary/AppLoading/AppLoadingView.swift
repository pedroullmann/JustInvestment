import ComposableArchitecture
import SwiftUI

public struct AppLoadingView: View {
    private let store: Store<AppLoadingState, AppLoadingAction>

    public init(store: Store<AppLoadingState, AppLoadingAction>) {
        self.store = store
    }

    public var body: some View {
        WithViewStore(store) { viewStore in
            Text(viewStore.isLoading ? "Loading" : "Loaded")
        }
    }
}

#if DEBUG
struct AppLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            previewLoading
            previewLoaded
        }
    }

    static var previewLoading: some View {
        staticView(state: .init(isLoading: true))
            .previewDisplayName("Loading")
    }

    static var previewLoaded: some View {
        staticView(state: .init(isLoading: false))
            .previewDisplayName("Loaded")
    }

    static func staticView(state: AppLoadingState) -> AppLoadingView {
        .init(
            store: .init(
                initialState: state,
                reducer: .empty,
                environment: () // not relevant when using an empty reducer
            )
        )
    }
}
#endif
