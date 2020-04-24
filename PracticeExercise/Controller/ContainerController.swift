//
//  ContainerController.swift
//  PracticeExercise
//
//  Created by bartosz on 13/06/2019.
//  Copyright © 2019 bartosz. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    var menuController:UIViewController!
    var centerController:UIViewController!
    
    var isExpended = false;
    
    
    
    //Mark: - Properties
    
    //Mark: - Init
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()
    }
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return .lightContent
    }
    
    
    func configureHomeController() {
        
        let homeController = HomeController()
        
        homeController.delegate = self
     //   let controller = UINavigationController(rootViewController: homeController)
        centerController = UINavigationController(rootViewController: homeController)
     //   view.addSubview(controller.view)
        view.addSubview(centerController.view)
     //   addChild(controller)
        addChild(centerController)
     //   controller.didMove(toParent:self)
        centerController.didMove(toParent:self)
        
        
    }
    
    func configureMenuController() {
        
        if menuController == nil {
            
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu controller")
            
        }
        
    }
    
    func showMenuController(shouldExpand: Bool) {
        
        
        if shouldExpand {
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.0, initialSpringVelocity: 0, options: .curveEaseInOut,  animations: {}, completion: nil)
            
            self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
            
        } else {
            
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.0, initialSpringVelocity: 0, options: .curveEaseInOut,  animations: {}, completion: nil)
            
            self.centerController.view.frame.origin.x = 0
            
            
        }
        
    }
}

extension ContainerController: HomeControllerDelegat {
    
    
    func handleMenuToggle() {
      //  configureMenuController()
        
        if(!isExpended) {
            
            configureMenuController()
        }
        
        isExpended = !isExpended
        showMenuController(shouldExpand: isExpended)
    }
}
