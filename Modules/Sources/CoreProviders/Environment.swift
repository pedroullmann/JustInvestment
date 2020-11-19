import Foundation

public enum Environment: String {
    case production
    case develop

    var description: String {
        rawValue.capitalized
    }

    var link: String {
        switch self {
        case .production:
            return "https://production.com.br"

        case .develop:
            return "https://develop.com.br"
        }
    }
}
