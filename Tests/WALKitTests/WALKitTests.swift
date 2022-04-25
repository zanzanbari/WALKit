import XCTest
@testable import WALKit

final class WALKitTests: XCTestCase {
    
    func testLoadUIColorFromBundle() {
        for color in UIColor.myProjectUIColors {
            XCTAssertNotNil(color)
        }
    }
    
    func testLoadUIImageFromBundle() {
        for image in UIImage.myProjectUIImages {
            XCTAssertNotNil(image)
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

fileprivate extension UIImage {
    static var myProjectUIImages: [UIImage] = [
        .btnDelete
    ]
}
