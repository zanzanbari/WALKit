//
//  UIColor+.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

#if os(iOS)
import UIKit
#endif

/** WAL Color System */

public extension UIColor {
    // Base Color
    static let black100 = UIColor(named: "black100", in: .module, compatibleWith: nil)!
    static let white100 = UIColor(named: "white100", in: .module, compatibleWith: nil)!
    
    // Gray Scale
    static let gray100 = UIColor(named: "gray100", in: .module, compatibleWith: nil)!
    static let gray200 = UIColor(named: "gray200", in: .module, compatibleWith: nil)!
    static let gray300 = UIColor(named: "gray300", in: .module, compatibleWith: nil)!
    static let gray400 = UIColor(named: "gray400", in: .module, compatibleWith: nil)!
    static let gray500 = UIColor(named: "gray500", in: .module, compatibleWith: nil)!
    static let gray600 = UIColor(named: "gray600", in: .module, compatibleWith: nil)!
    
    // Brand Color
    static let orange50 = UIColor(named: "orange50", in: .module, compatibleWith: nil)!
    static let orange100 = UIColor(named: "orange100", in: .module, compatibleWith: nil)!
    static let mint100 = UIColor(named: "mint100", in: .module, compatibleWith: nil)!
}
