import SwiftUI

private struct PaletteEnvironmentKey: EnvironmentKey {
    static let defaultValue: Palette = .savedPalette
}

public extension EnvironmentValues {
    var theme: Palette {
        get { self[PaletteEnvironmentKey.self] }
        set { self[PaletteEnvironmentKey.self] = newValue }
    }
}
