//
//  Fonts.swift
//  
//
//  Created by heerucan on 2022/04/24.
//

#if os(iOS)
import UIKit
#endif

public func registerFonts() {
    _ = UIFont.registerFont(bundle: .module, fontName: "Pretendard-Regular", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "Pretendard-Medium", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "Pretendard-Bold", fontExtension: "otf")
    _ = UIFont.registerFont(bundle: .module, fontName: "Pretendard-SemiBold", fontExtension: "otf")
}

extension UIFont {
    static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) -> Bool {

        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension) else {
            fatalError("Couldn't find font \(fontName)")
        }

        guard let fontDataProvider = CGDataProvider(url: fontURL as CFURL) else {
            fatalError("Couldn't load data from the font \(fontName)")
        }

        guard let font = CGFont(fontDataProvider) else {
            fatalError("Couldn't create font from data")
        }

        var error: Unmanaged<CFError>?
        let success = CTFontManagerRegisterGraphicsFont(font, &error)
        guard success else {
            print("Error registering font: maybe it was already registered.")
            return false
        }

        return true
    }
}
