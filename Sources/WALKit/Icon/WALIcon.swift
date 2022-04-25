//
//  WALIcon.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

import UIKit

public enum WALIcon: String {
    
    // Button Asset
    case btnDelete = "btn_delete"
    
    // Icon Asset
    case icnWarning = "icn_warning"
    case icnProgress1 = "icnProgress1"
    case icnProgress2 = "icnProgress2"
    case icnProgress3 = "icnProgress3"
}

public extension WALIcon {
    var image: UIImage {
        guard let image = UIImage(named: self.rawValue, in: .module, compatibleWith: nil) else {
            return UIImage()
        }
        return image
    }
}

public extension UIImage {
  convenience init(asset: WALIcon) {
    self.init(named: asset.rawValue)!
  }
}
