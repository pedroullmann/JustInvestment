import Alamofire
import Foundation

public final class NetworkManager {
    public private(set) static var instance: NetworkManager!

    public static func initialize(environment: Environment) {
        instance = .init(environment)
    }

    private init(_ environment: Environment) {
        setup(environment)
    }

    private func setup(_ environment: Environment) {
        let configuration = URLSessionConfiguration.default

        // TODO: Network Interceptor
        let session = Session(configuration: configuration)
        MoyaManager.initialize(url: environment.link, session: session)
    }
}
