//
//  ViewController.swift
//  Example
//
//  Created by bartosz on 23/05/2019.
//  Copyright © 2019 bartosz. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL)
        
        var word = Word()
        word.engword = "kind"
        word.plword = "rodzaj"
        
        try! realm.write {
            realm.add(word)
        }
    }


}

