//
//  WALNavigationBar.swift
//  
//
//  Created by heerucan on 2022/04/25.
//

import UIKit

import SnapKit

public class WALNavigationBar: UIView {
    
    // MARK: - Property
    
    public var title: String? {
        get { return self.titleLabel.text }
        set { self.titleLabel.text = newValue }
    }
    
    public var leftIcon: UIImage? = nil {
        didSet { setupIcon() }
    }
    
    public var rightIcon: UIImage? = nil {
        didSet { setupIcon() }
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = WALFont.body2.font
        label.textColor = .black100
        return label
    }()
    
    public let leftBarButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    public let rightBarButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    // MARK: - Initialize
    
    public init(title: String?) {
        super.init(frame: .zero)
        self.title = title
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set UI
    
    private func setupLayout() {
        addSubview(titleLabel)
        addSubview(leftBarButton)
        addSubview(rightBarButton)
        
        snp.makeConstraints { make in
            make.height.equalTo(Matrix.navigationHeight)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        leftBarButton.snp.makeConstraints { make in
            make.top.leading.bottom.equalToSuperview()
            make.width.height.equalTo(Matrix.barButtonSize)
        }
        
        rightBarButton.snp.makeConstraints { make in
            make.top.trailing.bottom.equalToSuperview()
            make.width.height.equalTo(Matrix.barButtonSize)
        }
    }
    
    private func setupIcon() {
        guard let leftIcon = leftIcon else { return }
        guard let rightIcon = rightIcon else { return }
        
        leftBarButton.setImage(leftIcon, for: .normal)
        leftBarButton.setImage(leftIcon.withTintColor(.gray600, renderingMode: .alwaysOriginal), for: .highlighted)
        
        rightBarButton.setImage(rightIcon, for: .normal)
        rightBarButton.setImage(rightIcon.withTintColor(.gray600, renderingMode: .alwaysOriginal), for: .highlighted)
    }
}
