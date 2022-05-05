//
//  File.swift
//  
//
//  Created by heerucan on 2022/05/01.
//

import UIKit

/** WAL Icon System */

public enum WALIcon: String {
    
    // Button Asset
    case btnDelete = "btn_delete"
    case btnBack = "btn_back"
    case btnHistory = "btn_history"
    case btnInfo = "btn_info"
    case btnSelect = "btn_select_box_active"
    case btnUnselect = "btn_select_box"
    
    // Icon Asset
    case icnWarning = "icn_warning"
    case icnProgress1 = "icnProgress1"
    case icnProgress2 = "icnProgress2"
    case icnProgress3 = "icnProgress3"
    case icnApple = "icn_apple"
    case icnKakao = "icn_kakao"
    case icnLock = "icn_lock"
    case icnReturn = "icn_rt"
    case icnTrash = "icn_trash"
    case icnBubble = "icn_bubble"
    case icnEvening = "icn_evening"
    case icnLaunch = "icn_launch"
    case icnMorning = "icn_morning"
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
