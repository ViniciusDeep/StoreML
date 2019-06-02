//
//  AppRowCell.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 23/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit


class AppRowCell: UICollectionViewCell {
    
    lazy var nameLabel =  UILabel(text: "App name", font: .systemFont(ofSize: 16))
    lazy var companyLabel = UILabel(text: "Company Name ", font: .systemFont(ofSize: 13))
    lazy var appIconImageView = UIImageView(cornerRadius: 8)
    lazy var getButton = UIButton(title: "GET")
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setConstraints() {
        appIconImageView.constrainWidth(constant: 64)
        appIconImageView.constrainHeight(constant: 64)
        appIconImageView.backgroundColor = .purple
        getButton.backgroundColor = UIColor(white: 0.95, alpha: 1)
        getButton.constrainWidth(constant: 80)
        getButton.constrainHeight(constant: 32)
        getButton.layer.cornerRadius = 32/2
        getButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        let stackView = UIStackView(arrangedSubviews: [appIconImageView, VerticalStackView(arrangedSubviews: [nameLabel, companyLabel], spacing: 4), getButton])
        stackView.alignment = .center
        stackView.spacing = 16
        addSubview(stackView)
        stackView.fillSuperview()
    }
    
}
