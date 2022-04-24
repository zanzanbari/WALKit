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
        UIColor.black100,
        UIColor.white100, //It fails when it tries to access this color.
        UIColor.gray100,
        UIColor.gray200,
        UIColor.gray300,
        UIColor.gray400,
        UIColor.gray500,
        UIColor.gray600,
        UIColor.orange100,
        UIColor.mint100
        ]
}
