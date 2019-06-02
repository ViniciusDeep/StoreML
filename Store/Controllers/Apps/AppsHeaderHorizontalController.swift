//
//  AppsHeaderHorizontalController.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 02/06/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

class AppsHeaderHorizontalController: BaseListController {
    
    let cellId = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
    }
}

extension AppsHeaderHorizontalController: UICollectionViewDelegateFlowLayout {
    
    fileprivate func setupCollection() {
        self.collectionView.register(AppsHeaderCollectionViewCell.self, forCellWithReuseIdentifier: self.cellId)
        collectionView.backgroundColor = .yellow
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppsHeaderCollectionViewCell
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: self.view.frame.width - 48, height: self.view.frame.height - 20)
    }
    
}
