//
//  VerticalStackView.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 17/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//



import UIKit

class VerticalStackView: UIStackView {
    
    init(arrangedSubviews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubviews.forEach({addArrangedSubview($0)})
        
        self.spacing = spacing
        self.axis = .vertical
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
