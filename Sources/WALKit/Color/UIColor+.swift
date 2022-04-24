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
    static let black = UIColor(named: "black100")
    static let white = UIColor(named: "white100")
    
    // Gray Scale
    static let gray100 = UIColor(named: "gray100")
    static let gray200 = UIColor(named: "gray200")
    static let gray300 = UIColor(named: "gray300")
    static let gray400 = UIColor(named: "gray400")
    static let gray500 = UIColor(named: "gray500")
    static let gray600 = UIColor(named: "gray600")
    
    // Brand Color
    static let orange100 = UIColor(named: "orange100")
    static let mint100 = UIColor(named: "mint100")
}
