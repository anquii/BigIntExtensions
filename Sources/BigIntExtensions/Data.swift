import Foundation
import BigInt

public extension Data {
    init(unsignedInteger: BigUInt, minimumLength: Int = 0) {
        let data = unsignedInteger.serialize()
        if data.count >= minimumLength {
            self = data
        } else {
            self = Data(repeating: 0, count: minimumLength - data.count) + data
        }
    }
}
