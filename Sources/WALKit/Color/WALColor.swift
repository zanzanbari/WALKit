//
//  WALKit.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

#if os(iOS)
import UIKit
#endif

/** WAL Color System */

public enum WALColor {
    // Base Color
    public static let black = UIColor(named: "black100")
    public static let white = UIColor(named: "white100")
    
    // Gray Scale
    public static let gray100 = UIColor(named: "gray100")
    public static let gray200 = UIColor(named: "gray200")
    public static let gray300 = UIColor(named: "gray300")
    public static let gray400 = UIColor(named: "gray400")
    public static let gray500 = UIColor(named: "gray500")
    public static let gray600 = UIColor(named: "gray600")
    
    // Brand Color
    public static let orange100 = UIColor(named: "orange100")
    public static let mint100 = UIColor(named: "mint100")
}
