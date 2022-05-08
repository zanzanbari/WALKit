//
//  WALAuthButton.swift
//  
//
//  Created by heerucan on 2022/04/30.
//

import UIKit

public class WALAuthButton: UIButton {
    
    // MARK: - Enum
    
    public enum AuthType {
        case apple
        case kakao
        
        fileprivate var text: String {
            switch self {
            case .apple:
                return "Apple로 로그인"
            case .kakao:
                return "카카오 로그인"
            }
        }
        
        fileprivate var backgroundColor: UIColor {
            switch self {
            case .apple:
                return .black100
            case .kakao:
                return .yellow100
            }
        }
        
        fileprivate var foregroundColor: UIColor {
            switch self {
            case .apple:
                return .white100
            case .kakao:
                return .black100
            }
        }
        
        fileprivate var borderColor: CGColor? {
            switch self {
            case .apple:
                return UIColor.black100.cgColor
            case .kakao:
                return nil
            }
        }
        
        fileprivate var icon: UIImage {
            switch self {
            case .apple:
                return WALIcon.icnApple.image
            case .kakao:
                return WALIcon.icnKakao.image
            }
        }
    }
    
    // MARK: - Property
    
    public var authType: AuthType = .apple

    // MARK: - Initialize
    
    public init(type: AuthType) {
        super.init(frame: .zero)
        authType = type
        setupUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set UI
    
    private func setupUI() {
        titleLabel?.font = WALFont.body2.font
        layer.cornerRadius = Matrix.buttonCornerRadius
        setTitle(authType.text, for: .normal)
        setTitleColor(authType.foregroundColor, for: .normal)
        setTitleColor(authType.foregroundColor.withAlphaComponent(0.5), for: .highlighted)
        backgroundColor = authType.backgroundColor
        setImage(authType.icon, for: .normal)
    }
    
    private func setupLayout() {
        self.snp.makeConstraints {
            $0.height.equalTo(Matrix.buttonHeight)
        }
    }
}
