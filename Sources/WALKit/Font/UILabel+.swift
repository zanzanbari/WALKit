//
//  UILabel+.swift
//  
//
//  Created by heerucan on 2022/04/23.
//

import UIKit

public extension UILabel {
    func addLabelSpacing(fontStyle: WALFont) {
        guard let lineHeight = fontStyle.fontProperty.lineHeight else { return }
        let kernValue = fontStyle.fontProperty.kern
        
        if let labelText = text, labelText.count > 0 {
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.lineSpacing = lineHeight
            attributedText = NSAttributedString(
                string: labelText,
                attributes: [
                    .kern: kernValue,
                        .paragraphStyle: paragraphStyle
                ]
            )
        }
    }
}
