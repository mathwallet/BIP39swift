import XCTest
@testable import BIP39swift

final class BIP39swiftTests: XCTestCase {
    public func testBIP39RandomExample() {
        let mnemonic = try? BIP39.generateMnemonics(bitsOfEntropy: 128)
        XCTAssertNotNil(mnemonic)
        
        let entropy =  BIP39.mnemonicsToEntropy("scheme spot photo card baby mountain device kick cradle pact join borrow")
        XCTAssertEqual(entropy!.toHexString(), "c0ba5a8e914111210f2bd131f3d5e08d")
        
        let data = BIP39.seedFromMnemonics("bulb success more steak elegant pill open avoid detect prepare rural market")!
        XCTAssertEqual(data.toHexString(), "519fba8ba696e86dc5d8c2e43fd1593d75448f79e0812c9ebe19b95276ce5fe5387d24474bfa5aca266314df757de42daf9c5025086f3c2230419dde900d3fd3")
    }
}
