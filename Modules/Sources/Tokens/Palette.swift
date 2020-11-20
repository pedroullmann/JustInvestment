import Foundation
import RootElements
import SwiftUI

public struct Palette: Codable {
    let textPrimary: Color
}

public extension Palette {
    static let `default`: Self = .init(
        textPrimary: .init(hex: "#FF5733")
    )

    @CodableUserDefault(.savedPalette, defaultValue: .default)
    internal(set) static var savedPalette: Palette
}
