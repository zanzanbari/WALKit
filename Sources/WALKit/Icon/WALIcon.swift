//
//  WALIcon.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

import UIKit

//
//public extension UIImage {
//  convenience init(asset: WALIcon) {
//    self.init(named: asset.rawValue)!
//  }
//}

public extension UIImage {
    
    enum WALIcon: String {
        case btnDelete = "btn_delete"
        
        static func image(_ type: WALIcon) -> UIImage {
            return UIImage(named: type.rawValue)!
        }
    }
}
