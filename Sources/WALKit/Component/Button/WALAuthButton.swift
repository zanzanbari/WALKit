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
                return .yellow100
            }
        }
        
        fileprivate var borderColor: CGColor? {
            switch self {
            case .apple:
                return UIColor.black200.cgColor
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
        
        fileprivate var imagePadding: NSDirectionalEdgeInsets {
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
                return NSDirectionalEdgeInsets(top: 11, leading: 12, bottom: 11, trailing: 12)
            case .kakao:
                return NSDirectionalEdgeInsets(top: 11, leading: 13, bottom: 11, trailing: 13)
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
        titleLabel?.font = .boldSystemFont(ofSize: 17)
        layer.cornerRadius = Matrix.authCornerRadius
        layer.borderColor = authType.borderColor
        layer.borderWidth = authType.borderWidth
        setTitle(authType.text, for: .normal)
        setTitleColor(authType.foregroundColor, for: .normal)
        setTitleColor(authType.foregroundColor.withAlphaComponent(0.5), for: .highlighted)
        backgroundColor = authType.backgroundColor
        setImage(authType.icon, for: .normal)
        
        var configuration = UIButton.Configuration.plain()
        configuration.contentInsets = authType.contentInset
        configuration.imagePadding = authType.imagePadding
        configuration = configuration
    }
    
    private func setupLayout() {
        self.snp.makeConstraints {
            $0.height.equalTo(Matrix.buttonHeight)
        }
    }
}
