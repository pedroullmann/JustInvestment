import Foundation
import RootElements
import SwiftUI

public struct Palette: Codable {
    // MARK: - Base
    public let textPrimary: Color
    public let elementBackground: Color

    // MARK: - Components
    public let primaryRed: Color
    public let primaryBlue: Color
    public let primaryOrange: Color
    public let primaryGreen: Color
}

public extension Palette {
    static let `default`: Self = .init(
        textPrimary: .init(hex: "#FFFFFF"),
        elementBackground: .init(hex: "#2E2D33"),
        primaryRed: .init(hex: "#F05454"),
        primaryBlue: .init(hex: "#5FDDE5"),
        primaryOrange: .init(hex: "#EE6F57"),
        primaryGreen: .init(hex: "#50D890")
    )

    @CodableUserDefault(.savedPalette, defaultValue: .default)
    internal(set) static var savedPalette: Palette
}

public extension Palette {
    subscript(color keyPath: KeyPath<Palette, Color>) -> SwiftUI.Color {
        self[keyPath: keyPath].swiftUIColor
    }
}
