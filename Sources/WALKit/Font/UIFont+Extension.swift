//
//  UIFont+.swift
//  
//
//  Created by heerucan on 2022/04/22.
//

#if os(iOS)
import UIKit
#endif

public extension UIFont {
    enum FontType: String {
        case regular = "Pretendard-Regular"
        case medium = "Pretendard-Medium"
        case semibold = "Pretendard-Semibold"
        case bold = "Pretendard-Bold"
        case cafeBold = "Cafe24Ssurround"
        
        var name: String {
            return self.rawValue
        }
        
        static func font(_ type: FontType, ofsize size: CGFloat) -> UIFont {
            return UIFont(name: type.rawValue, size: size)!
        }
    }
}
