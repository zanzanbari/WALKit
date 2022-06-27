//
//  WALPopup.swift
//  
//
//  Created by heerucan on 2022/06/28.
//

import UIKit

public class WALPopup: UIView {

    // MARK: - Properties
    
    public lazy var okText: String? = nil {
        didSet { okButton.title = okText }
    }
    
    public lazy var cancelText: String? = nil {
        didSet { cancelButton.title = cancelText }
    }
    
    private let titleLabel = UILabel()
    private let infoLabel = UILabel()
    
    public var okButton = WALPopupButton()
    public var cancelButton = WALPopupButton()
    
    // MARK: - Initialize
    
    public init(title: String, info: String? = nil) {
        super.init(frame: .zero)
        configUI()
        titleLabel.text = title
        infoLabel.text = info
                
        setView()
        setTitleLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Set UI
    
    private func configUI() {
        titleLabel.font = WALFont.body1.font
        infoLabel.font = WALFont.body7.font
        titleLabel.textColor = .black100
        infoLabel.textColor = .gray100

        cancelButton.setTitleColor(.black100, for: .normal)
        okButton.setTitleColor(.mint100, for: .normal)
    }
    
    private func setView() {
        backgroundColor = .white100
        layer.cornerRadius = 20
        
        self.addSubview(titleLabel)
        self.addSubview(infoLabel)
        self.addSubview(cancelButton)
        self.addSubview(okButton)
        
        self.snp.makeConstraints {
            $0.width.equalTo(295)
            $0.height.equalTo(154)
        }
        
        cancelButton.snp.makeConstraints {
            $0.leading.bottom.equalToSuperview()
            $0.trailing.equalTo(self.snp.centerX)
        }
        
        okButton.snp.makeConstraints {
            $0.trailing.bottom.equalToSuperview()
            $0.leading.equalTo(self.snp.centerX).inset(1)
        }
    }
    
    private func setTitleLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().inset(26)
            $0.leading.equalToSuperview().inset(27)
        }
        
        infoLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(10)
            $0.leading.equalToSuperview().inset(27)
        }
    }
}
