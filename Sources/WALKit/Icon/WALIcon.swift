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
    
    // Card Asset
    case imgDripActive = "img_drip_active"
    case imgDripInActive = "img_drip_inactive"
    case imgGgujungActive = "img_ggujung_active"
    case imgGgujungInActive = "img_ggujung_inactive"
    case imgJujeopActive = "img_jujeop_active"
    case imgJujeopInActive = "img_jujeop_inactive"
    case imgWeroActive = "img_wero_active"
    case imgWeroInActive = "img_wero_inactive"
    
    // 왈뿡 Asset
    case imgWallbbongLove = "img_walbbong_love"
    case imgWallbbongFun = "img_walbbong_fun"
    case imgWallbbongCheer = "img_walbbong_cheer"
    case imgWallbbongAngry = "img_walbbong_angry"
    case imgWalbbongLogo = "img_walbbong_logo"
    case imgWalBBongArrive1 = "walBBong_arrive1"
    case imgWalBBongArrive2 = "walBBong_arrive2"
    case imgWalBBongArrive3 = "walBBong_arrive3"
    case imgWalBBongSleeping = "walBBong_sleeping"
    case imgWalBBongWaiting = "walBBong_waiting"
    
    // paw Asset
    case imgPawActive = "img_paw_active"
    case imgPawInAtive = "img_paw_inactive"
    case imgPawSpecial = "img_paw_special"
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
