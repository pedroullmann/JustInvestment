import Moya

public final class MoyaManager {
    public private(set) static var session: Session!
    public static var url: String!

    public static func initialize(url: String, session: Session) {
        self.url = url
        self.session = session
    }
}
