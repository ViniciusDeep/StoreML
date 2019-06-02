//
//  AppsHorizontalController.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 20/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit



class AppsHorizontalController: BaseListController, UICollectionViewDelegateFlowLayout {

    
    let cellId: String = "cellId"
    
    override func viewDidLoad() {
        collectionView.backgroundColor = .white
        collectionView.register(AppRowCell.self, forCellWithReuseIdentifier: cellId)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! AppRowCell
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        return cell
    }
    
    let topBottomPadding: CGFloat = 12
    let lineSpacing: CGFloat = 10
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.height - 2 * topBottomPadding - 2 * lineSpacing) / 3
        return .init(width: view.frame.width - 48, height: height)
    }
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: topBottomPadding, left: 16, bottom: topBottomPadding, right: 16)
    }
    
}
