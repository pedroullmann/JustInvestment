import Primary
import SwiftUI

@main
struct JustApp: App {
    var body: some Scene {
        WindowGroup {
            AppLoadingView(
                store: .init(
                    initialState: .init(),
                    reducer: appLoadingReducer,
                    environment: .init(
                        mainQueue: DispatchQueue.main.eraseToAnyScheduler(),
                        service: .live
                    )
                )
            )
        }
    }
}
