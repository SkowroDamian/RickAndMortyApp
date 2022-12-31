//
//  ViewController.swift
//  RickAndMortyApp
//
//  Created by Damian Skowroński on 31/12/2022.
//

import UIKit

class RMTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
        // Do any additional setup after loading the view.
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let episodesVC = RMEpisodeViewController()
        let locationsVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // below title implementation has been moved to the classes of viewControllers
//        charactersVC.title = "Characters"
//        locationsVC.title = "Locations"
//        episodesVC.title = "Episodes"
//        settingsVC.title = "Settings"
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        //dodaje podpisy ikonki do navbara; apka do ikonek - SFSymbols
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

