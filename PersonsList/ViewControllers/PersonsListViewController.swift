//
//  PersionsListViewController.swift
//  PersonsList
//
//  Created by Vladimir on 09/09/2020.
//  Copyright © 2020 Embler. All rights reserved.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private var personsList: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataManager.setPesonsList()
        personsList = DataManager.getPersonsList()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullname", for: indexPath)
        
        cell.textLabel?.text = personsList[indexPath.row].fullName
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailsVC = segue.destination as? PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailsVC.person = personsList[indexPath.row]
    }
}
