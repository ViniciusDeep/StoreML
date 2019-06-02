//
//  BaseListController.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 20/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class BaseListController: UICollectionViewController {
    
    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
