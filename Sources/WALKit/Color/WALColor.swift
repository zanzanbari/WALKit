//
//  WALKit.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

import UIKit

/** WAL Color System */

public enum WALColor: String, CaseIterable {
    // Base Color
    case black
    case white
    
    // Gray Scale
    case gray100
    case gray200
    case gray300
    case gray400
    case gray500
    case gray600

    // Brand Color
    case orange100
    case mint100
    
    public var color: UIColor {
        switch self {
        case .black:
            return UIColor(named: "black100")!
        case .white:
            return UIColor(named: "white100")!
        case .gray100:
            return UIColor(named: "gray100")!
        case .gray200:
            return UIColor(named: "gray200")!
        case .gray300:
            return UIColor(named: "gray300")!
        case .gray400:
            return UIColor(named: "gray400")!
        case .gray500:
            return UIColor(named: "gray500")!
        case .gray600:
            return UIColor(named: "gray600")!
        case .orange100:
            return UIColor(named: "orange100")!
        case .mint100:
            return UIColor(named: "mint100")!
        }
    }
}
