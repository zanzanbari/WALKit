import XCTest
@testable import WALKit

final class WALKitTests: XCTestCase {
    func testExample() throws {
        
    }
    
    func testLoadUIColorFromBundle() {
        for color in UIColor.myProjectUIColors {
            XCTAssertNotNil(color)
        }
    }
}

fileprivate extension UIColor {
    static var myProjectUIColors: [UIColor] = [
        .black100,
        .white100,
        .gray100,
        .gray200,
        .gray300,
        .gray400,
        .gray500,
        .gray600,
        .orange100,
        .mint100
    ]
}
