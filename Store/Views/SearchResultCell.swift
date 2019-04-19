//
//  SearchResultCell.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 16/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

public class SearchResultCell: UICollectionViewCell {
    
    
    var appResult: Result! {
        didSet {
            nameLabel.text = appResult.trackName
            categoryLabel.text = appResult.primaryGenreName
            appIconImageView.sd_setImage(with: URL(string: appResult.artworkUrl100))
            
            if appResult.screenshotUrls.count > 1 {
                screenshot1ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[0]))
                screenshot2ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[1]))
            }
            if appResult.screenshotUrls.count > 2 {
                screenshot3ImageView.sd_setImage(with: URL(string: appResult.screenshotUrls[2]))
            }
            let urlAppIcon = URL(string: appResult.artworkUrl100)
            appIconImageView.sd_setImage(with: urlAppIcon)
        }
    }
    
    lazy var appIconImageView: UIImageView = {
        let iv = UIImageView()
        iv.backgroundColor = .red
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.heightAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.cornerRadius = 12
        iv.clipsToBounds = true
        return iv
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.text = "APP Name"
        return label
    }()
    
    lazy var categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category & Gender of App"
        return label
    }()
    
    lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26 M"
        return label
    }()
    
    lazy var getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(white: 0.95, alpha: 1)
        button.widthAnchor.constraint(equalToConstant: 80).isActive = true
        button.heightAnchor.constraint(equalToConstant: 32).isActive = true
        button.layer.cornerRadius = 16
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpComponentsInCell()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    lazy var screenshot1ImageView = self.createScreenShotImageView()
    lazy var screenshot2ImageView = self.createScreenShotImageView()
    lazy var screenshot3ImageView = self.createScreenShotImageView()
    
    fileprivate func createScreenShotImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }
    
    fileprivate func setUpComponentsInCell() {
        let infoTopStackView = UIStackView(arrangedSubviews: [appIconImageView, VericalStackView(arrangeSubviews: [nameLabel, categoryLabel, ratingLabel], spacing: 12),getButton])
        infoTopStackView.spacing = 12
        infoTopStackView.alignment = .center
        
        let screenshotStackView = UIStackView(arrangedSubviews: [screenshot1ImageView, screenshot2ImageView, screenshot3ImageView])
        screenshotStackView.spacing = 12
        screenshotStackView.distribution = .fillEqually
        
        let overralStackView = VericalStackView(arrangeSubviews: [infoTopStackView, screenshotStackView], spacing: 16)
        
        addSubview(overralStackView)
        overralStackView.fillSuperview(padding: .init(top: 18, left: 18, bottom: 18, right: 18))
    }
 
    
    
}
