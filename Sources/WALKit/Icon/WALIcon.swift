//
//  WALIcon.swift
//  
//
//  Created by heerucan on 2022/04/24.
//UIImage(named: "btn_delete", in: .module, compatibleWith: nil)!

import UIKit

public enum WALIcon: String {
    case btnDelete = "btn_delete"
}

public extension WALIcon {
    var image: UIImage {
        return UIImage(named: self.rawValue)!
    }
}

public extension UIImage {
  convenience init(asset: WALIcon) {
    self.init(named: asset.rawValue)!
  }
}
