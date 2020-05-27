//
//  GFTabBarController.swift
//  GitHub Followers
//
//  Created by Ali Aljoubory on 25/05/2020.
//  Copyright © 2020 Ali Aljoubory. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavouritesNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVc = SearchViewController()
        
        searchVc.title = "Search"
        searchVc.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVc)
    }
    
    func createFavouritesNC() -> UINavigationController {
        let favouritesListVc = FavouritesListViewController()
        
        favouritesListVc.title = "Favourites"
        favouritesListVc.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return UINavigationController(rootViewController: favouritesListVc)
    }
}
