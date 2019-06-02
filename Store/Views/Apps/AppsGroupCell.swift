//
//  AppsGroupCell.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 20/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class AppsGroupCell: UICollectionViewCell {
    
    let titleLabel = UILabel(text: "Apps Section", font: .boldSystemFont(ofSize: 30))
    let horizontalController = AppsHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        addSubview(horizontalController.view)
        horizontalController.view.anchor(top: titleLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}




 
