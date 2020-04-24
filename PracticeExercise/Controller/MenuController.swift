//
//  MenuController.swift
//  PracticeExercise
//
//  Created by bartosz on 13/06/2019.
//  Copyright © 2019 bartosz. All rights reserved.
//

import UIKit

private let reuseIdentifire = "MenuOptionCell"

class MenuController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifire, for: indexPath ) as! MenuOptionCell
        
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        return cell
    }
    
    
    //Mark: - Properties
    
    var tableView: UITableView!
    
    //Mark: - Init
    
    //Mark: - Handlers
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    func configureTableView() {
        
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifire)
        tableView.backgroundColor = .darkGray
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}
