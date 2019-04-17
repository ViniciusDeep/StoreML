//
//  VerticalStackView.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 17/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit


class VericalStackView: UIStackView {
    
    init(arrangeSubviews: [UIView], spacing: CGFloat) {
        super.init(frame: .zero)
        arrangeSubviews.forEach({addArrangedSubview($0)})
        self.axis = .vertical
        self.spacing = spacing
    }
    required init(coder: NSCoder) {
        fatalError()
    }
    
    
}
