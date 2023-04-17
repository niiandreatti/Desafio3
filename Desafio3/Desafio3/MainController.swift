//
//  ViewController.swift
//  Desafio3
//
//  Created by Nicolas Santana on 17/04/23.
//

import UIKit

class ViewController: UITabBarController {
    //MARK: life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
    }
    //MARK: Helpers
    
    func configureController(){
        let feed = FeedController()
        feed.tabBarItem.image = UIImage(named: "home_unselected")
        
        let explore = ExplorerController()
        explore.tabBarItem.image = UIImage(named: "search_unselected")
        
        viewControllers = [feed, explore]
    }


}

