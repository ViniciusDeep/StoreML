//
//  AppsSearchController.swift
//  Store
//
//  Created by Vinicius Mangueira Correia on 16/04/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit
import SDWebImage

class AppsSearchController: BaseListController, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
    fileprivate let cellId: String = "id1234"
    fileprivate let searchController = UISearchController(searchResultsController: nil)

    
    fileprivate lazy var enterSearchTermLabel: UILabel = {
       let label = UILabel()
        label.text = "Please enter of your app name above..."
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: cellId)
        collectionView.addSubview(enterSearchTermLabel)
        enterSearchTermLabel.fillSuperview(padding: .init(top: 100, left: 50, bottom: 0, right: 50))
        setupSearchBar()
    }
    
    fileprivate func setupSearchBar() {
        definesPresentationContext = true
        navigationItem.searchController = self.searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
    
    fileprivate var timer: Timer?
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        timer?.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false, block: { (_) in
            Service.shared.fetchApps(searchTerm: searchText) { (res, err) in
                self.appResults = res
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            }
            
        })
    }
    
    
    fileprivate var appResults = [Result]()
    fileprivate func fetchItunesApps() {
        Service.shared.fetchApps(searchTerm: "Twitter") { (results, error)in
            if let error = error {
                print(error)
                return
            }
            self.appResults = results
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 350)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:SearchResultCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SearchResultCell
        cell.appResult = appResults[indexPath.item]
        cell.getButton.addTarget(self, action: #selector(getApp), for: .touchUpInside)
    
        
        return cell
    }
    
    @objc fileprivate func getApp() {
        print("App tapped")
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        enterSearchTermLabel.isHidden = appResults.count != 0
        return appResults.count
    }
    
}
