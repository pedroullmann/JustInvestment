import Foundation
import SwiftUI
import UIColor_Hex_Swift

public struct Color {
    let hex: String
}

extension Color: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self = .init(hex: value)
    }
}

public extension Color {
    var uiColor: UIColor {
        UIColor(hex)
    }

    var swiftUIColor: SwiftUI.Color {
        SwiftUI.Color(uiColor)
    }
}
