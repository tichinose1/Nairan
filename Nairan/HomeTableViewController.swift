//
//  HomeTableViewController.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/19.
//

import UIKit

class HomeTableViewController: UITableViewController {

    private let items: [Advice] = Advice.items

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "adviceCell", for: indexPath) as? AdviceTableViewCell else { fatalError() }
        let item = items[indexPath.row]
        cell.configure(advice: item)
        return cell
    }
}
