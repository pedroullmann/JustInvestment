@testable import CoreProviders
import Foundation
import XCTest

class EnvironmentTests: XCTestCase {
    func testProductionEnvironment() {
        let env: Environment = .production
        XCTAssertEqual(env.description, "Production")
        XCTAssertEqual(env.link, "https://production.com.br")
    }

    func testDevelopEnvironment() {
        let env: Environment = .develop
        XCTAssertEqual(env.description, "Develop")
        XCTAssertEqual(env.link, "https://develop.com.br")
    }
}
