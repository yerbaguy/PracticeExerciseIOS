//
//  HomeController.swift
//  PracticeExercise
//
//  Created by bartosz on 13/06/2019.
//  Copyright © 2019 bartosz. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    //Mark: - Properties
    
    var delegate: HomeControllerDelegat?
    
    //Mark: - Init
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        configureNavigationBar()
    }
    
    
    @objc func handleMenuToggle() {
        
        delegate?.handleMenuToggle()
        
        print("Menu")
    }
    
    func configureNavigationBar() {
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Menu"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu.png").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
}
