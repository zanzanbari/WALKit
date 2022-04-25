//
//  WALTextField.swift
//  
//
//  Created by heerucan on 2022/04/26.
//

import UIKit

import SnapKit

public class WALTextField: UITextField {
    
    // MARK: - Property
    
    public var isFocusing: Bool = false {
        didSet { setupState() }
    }
    
    public override var placeholder: String? {
        didSet { setupPlaceholder() }
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
        font = WALFont.body6.font
        tintColor = .orange100
        backgroundColor = .white100
        layer.cornerRadius = Matrix.textFieldCornerRadius
        setupPadding()
        setupState()
    }
    
    private func setupLayout() {
        snp.makeConstraints { make in
            make.height.equalTo(Matrix.textFieldHeight)
        }
    }
    
    private func setupState() {
        layer.borderColor = UIColor.gray400.cgColor
        layer.borderWidth = 1
        
        if isFocusing {
            layer.borderColor = UIColor.orange100.cgColor
        }
    }
    
    private func setupPlaceholder() {
        guard let placeholder = placeholder else {
            return
        }

        attributedPlaceholder = NSAttributedString(
            string: placeholder,
            attributes: [.foregroundColor: UIColor.gray200]
        )
    }
    
}
