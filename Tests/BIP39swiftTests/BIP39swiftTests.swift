import XCTest
@testable import BIP39swift

final class BIP39swiftTests: XCTestCase {
    public func testBIP39RandomExample() {
        let mnemonic = try? BIP39.generateMnemonics(bitsOfEntropy: 128)
        XCTAssertNotNil(mnemonic)
        
        let entropy =  BIP39.mnemonicsToEntropy("scheme spot photo card baby mountain device kick cradle pact join borrow")
        XCTAssertEqual(entropy!.toHexString(), "c0ba5a8e914111210f2bd131f3d5e08d")
    }
}
