import XCTest
import Foundation
import BigInt
import BigIntExtensions

final class DataTests: XCTestCase {
    func testGivenUnsignedInteger_WithByteLengthEqualToMinimum_WhenInit_ThenLeading0sNotAdded() {
        let unsignedInteger = BigUInt("6083874454709270928345386274498605044986640685124978867557563392430687146096")
        XCTAssertEqual(Data(unsignedInteger: unsignedInteger, minimumLength: 32), unsignedInteger.serialize())
    }

    func testGivenUnsignedInteger_WithByteLengthGreaterThanMinimum_WhenInit_ThenLeading0sNotAdded() {
        let unsignedInteger = BigUInt("6083874454709270928345386274498605044986640685124978867557563392430687146096")
        XCTAssertEqual(Data(unsignedInteger: unsignedInteger, minimumLength: 0), unsignedInteger.serialize())
    }

    func testGivenUnsignedInteger_WithByteLengthLessThanMinimum_WhenInit_ThenLeading0sAdded() {
        let unsignedInteger = BigUInt("6083874454709270928345386274498605044986640685124978867557563392430687146096")
        let data = Data(unsignedInteger: unsignedInteger, minimumLength: 64)
        XCTAssertEqual(data[...31], Data(repeating: 0, count: 32))
        XCTAssertEqual(data[32...], unsignedInteger.serialize())
    }
}
