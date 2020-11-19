import ComposableArchitecture
import SwiftUI

struct ___VARIABLE_componentName___View: View {
    let store: Store<___VARIABLE_componentName___State, ___VARIABLE_componentName___Action>

    var body: some View {
        WithViewStore(store) { viewStore in
            Text(viewStore.isLoading ? "Loading" : "Loaded")
        }
    }
}

#if DEBUG
struct ___VARIABLE_componentName___View_Previews: PreviewProvider {
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

    static func staticView(state: ___VARIABLE_componentName___State) -> ___VARIABLE_componentName___View {
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
