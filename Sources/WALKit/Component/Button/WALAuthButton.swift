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
                return .white100
            case .kakao:
                return .yellow100
            }
        }
        
        fileprivate var foregroundColor: UIColor {
            switch self {
            case .apple:
                return .black200
            case .kakao:
                return .black100
            }
        }
        
        fileprivate var borderColor: UIColor? {
            switch self {
            case .apple:
                return .black200
            case .kakao:
                return nil
            }
        }
        
        fileprivate var borderWidth: CGFloat {
            switch self {
            case .apple:
                return 1
            case .kakao:
                return 0
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
        
        fileprivate var imagePadding: CGFloat {
            switch self {
            case .apple:
                return 71
            case .kakao:
                return 78
            }
        }
        
        fileprivate var contentInset: NSDirectionalEdgeInsets {
            switch self {
            case .apple:
                return NSDirectionalEdgeInsets(top: 11, leading: 12, bottom: 11, trailing: 112)
            case .kakao:
                return NSDirectionalEdgeInsets(top: 11, leading: 13, bottom: 11, trailing: 121)
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
        
        var attributedString = AttributedString(authType.text)
        attributedString.font = .boldSystemFont(ofSize: 17)
        
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.attributedTitle = attributedString
        buttonConfiguration.contentInsets = authType.contentInset
        buttonConfiguration.imagePadding = authType.imagePadding
        buttonConfiguration.imagePlacement = .leading
        buttonConfiguration.image = authType.icon
        buttonConfiguration.baseBackgroundColor = authType.backgroundColor
        buttonConfiguration.background.cornerRadius = Matrix.authCornerRadius
        buttonConfiguration.background.strokeWidth = authType.borderWidth
        buttonConfiguration.background.strokeColor = authType.borderColor
        configuration = buttonConfiguration
        
        setTitleColor(authType.foregroundColor, for: .normal)
        setTitleColor(authType.foregroundColor.withAlphaComponent(0.5), for: .highlighted)
    }
    
    private func setupLayout() {
        self.snp.makeConstraints {
            $0.height.equalTo(Matrix.buttonHeight)
        }
    }
}
