import Foundation

@propertyWrapper
public struct CodableUserDefault<Value: Codable> {
    let key: UserDefaultsKey
    let defaultValue: Value
    let userDefaults: UserDefaults
    let encoder: JSONEncoder
    let decoder: JSONDecoder

    public init(
        _ key: UserDefaultsKey,
        defaultValue: Value,
        userDefaults: UserDefaults = .standard,
        encoder: JSONEncoder = .init(),
        decoder: JSONDecoder = .init()
    ) {
        self.key = key
        self.defaultValue = defaultValue
        self.userDefaults = userDefaults
        self.encoder = encoder
        self.decoder = decoder
    }

    public var wrappedValue: Value {
        get {
            guard let data = userDefaults.object(forKey: key.rawValue) as? Data else {
                return defaultValue
            }
            do {
                return try decoder.decode(Value.self, from: data)
            } catch {
                return defaultValue
            }
        }
        set {
            do {
                let data = try encoder.encode(newValue)
                userDefaults.set(data, forKey: key.rawValue)
            } catch { }
        }
    }
}
