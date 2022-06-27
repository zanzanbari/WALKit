//
//  WALPopupButton.swift
//  
//
//  Created by heerucan on 2022/06/28.
//

import UIKit

public class WALPopupButton: UIButton {
    
    // MARK: - Property
        
    public var title: String? {
        didSet {
            setTitle(title, for: .normal)
        }
    }
    
    public override var isHighlighted: Bool {
        didSet {
            setupColor()
        }
    }

    // MARK: - Initialize
    
    public init() {
        super.init(frame: .zero)
        setupUI()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set UI
    
    private func setupUI() {
        titleLabel?.font = WALFont.body4.font
        layer.borderColor = UIColor.gray300.cgColor
        layer.borderWidth = 1
        
        setupColor()
    }
    
    private func setupLayout() {
        snp.makeConstraints { make in
            make.height.equalTo(53)
        }
    }
    
    private func setupColor() {
        backgroundColor = .white100
        
        if isHighlighted {
            backgroundColor = .gray600
        }
    }
}
