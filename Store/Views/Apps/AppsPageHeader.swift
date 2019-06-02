//
//  AppsPageHeader.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 03/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit
class AppsPageHeader: UICollectionReusableView {
  
    let appsPageHeaderController = AppsHeaderHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(appsPageHeaderController.view)
        self.appsPageHeaderController.view.fillSuperview()
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


