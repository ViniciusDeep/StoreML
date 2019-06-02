//
//  ApppsHeaderCollectionViewCell.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 02/06/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class AppsHeaderCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 16
        self.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
