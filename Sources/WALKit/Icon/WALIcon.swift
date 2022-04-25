//
//  WALIcon.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

import UIKit

public enum WALIcon: String {
    case btnDelete = "btn_delete"
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
