import XCTest
import BigInt
import BigIntExtensions

final class BigUIntTests: XCTestCase {
    func testGivenHexEncodedString_WithPrefix_WhenInit_ThenEqualValue() {
        XCTAssertEqual(
            BigUInt(hexEncodedString: "0xD7359D57963AB8FBBDE1852DCF553FEDBC31F464D80EE7D40AE683122B45070"),
            BigUInt("6083874454709270928345386274498605044986640685124978867557563392430687146096")
        )
    }

    func testGivenHexEncodedString_WithNoPrefix_WhenInit_ThenEqualValue() {
        XCTAssertEqual(
            BigUInt(hexEncodedString: "D7359D57963AB8FBBDE1852DCF553FEDBC31F464D80EE7D40AE683122B45070"),
            BigUInt("6083874454709270928345386274498605044986640685124978867557563392430687146096")
        )
    }
}
