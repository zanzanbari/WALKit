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
        
        fileprivate var leading: CGFloat {
            switch self {
            case .apple:
                return 12
            case .kakao:
                return 13
            }
        }
    }
    
    // MARK: - Property
    
    public var authType: AuthType = .apple
    
    private var iconImageView = UIImageView()

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
        layer.cornerRadius = Matrix.authCornerRadius
        layer.borderColor = authType.borderColor
        layer.borderWidth = authType.borderWidth
        titleLabel?.font = .boldSystemFont(ofSize: 17)
        setTitle(authType.text, for: .normal)
        setTitleColor(authType.foregroundColor, for: .normal)
        setTitleColor(authType.foregroundColor.withAlphaComponent(0.5), for: .highlighted)
        backgroundColor = authType.backgroundColor
        iconImageView.image = authType.icon
    }
    
    private func setupLayout() {
        addSubview(iconImageView)
        
        self.snp.makeConstraints {
            $0.height.equalTo(Matrix.buttonHeight)
        }
        
        iconImageView.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview().inset(11)
            make.leading.equalToSuperview().inset(authType.leading)
            make.width.height.equalTo(30)
        }
    }
}
