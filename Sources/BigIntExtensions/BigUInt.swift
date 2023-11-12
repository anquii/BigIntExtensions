import BigInt

public extension BigUInt {
    init?(hexEncodedString: String) {
        if hexEncodedString.hasPrefix("0x") {
            self.init(hexEncodedString.dropFirst(2), radix: 16)
        } else {
            self.init(hexEncodedString, radix: 16)
        }
    }
}
