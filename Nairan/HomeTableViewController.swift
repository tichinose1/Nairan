//
//  HomeTableViewController.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/19.
//

import UIKit
import PhotosUI

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

    // MARK: - Event handlers

    @IBAction func didTapPhotoButton(_ sender: UIBarButtonItem) {
        let configuration = PHPickerConfiguration()
        let controller = PHPickerViewController(configuration: configuration)
        controller.delegate = self
        present(controller, animated: true) {
        }
    }
}

extension HomeTableViewController: PHPickerViewControllerDelegate {

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true, completion: nil)
    }
}
