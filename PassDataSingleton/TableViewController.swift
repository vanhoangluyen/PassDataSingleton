//
//  TableViewController.swift
//  PassDataSingleton
//
//  Created by Hoang Luyen on 3/28/18.
//  Copyright © 2018 Hoang Luyen. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return DataService.shared.numbers.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = String(DataService.shared.numbers[indexPath.row])
        return cell
    }
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? ViewController {
            if let index = tableView.indexPathForSelectedRow {
                detailViewController.index = index.row
            }
        }
    }
}
