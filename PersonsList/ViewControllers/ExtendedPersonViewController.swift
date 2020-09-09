//
//  ExtendedContactsViewController.swift
//  PersonsList
//
//  Created by Vladimir on 09/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class ExtendedPersonViewController: UITableViewController {

    private var personsList: [Person] = []
    private let rowsInSection = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personsList = DataManager.getPersonsList()
        tabBarController?.title = "Extended Person"
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsInSection
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "extentedInfo", for: indexPath) as! ExtentedPersonTableViewCell
        
        if indexPath.row == 0 {
            cell.iconLabel.text = "📞"
            cell.infoLabel.text = personsList[indexPath.section].phone
        } else {
            cell.iconLabel.text = "📨"
            cell.infoLabel.text = personsList[indexPath.section].email
        }
        cell.backgroundColor = .systemGreen
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UILabel()
        headerView.text = personsList[section].fullName
        headerView.backgroundColor = .systemOrange
        return headerView
    }
}
