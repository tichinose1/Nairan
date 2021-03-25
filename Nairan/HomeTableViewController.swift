//
//  HomeTableViewController.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/19.
//

import UIKit
import PhotosUI

class HomeTableViewController: UITableViewController {

    private var items: [Defect] = Defect.items {
        didSet {
            tableView.reloadData()
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "defectCell", for: indexPath) as? DefectTableViewCell else { fatalError() }
        let item = items[indexPath.row]
        cell.configure(item: item)
        return cell
    }

    // MARK: - Event handlers

    @IBAction func didTapPhotoButton(_ sender: UIBarButtonItem) {
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 0
        let controller = PHPickerViewController(configuration: configuration)
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
}

extension HomeTableViewController: PHPickerViewControllerDelegate {

    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        defer {
            picker.dismiss(animated: true, completion: nil)
        }

        let alertController = UIAlertController()
        present(alertController, animated: true, completion: nil)

        if true {
            return
        }

        for result in results {
            guard result.itemProvider.canLoadObject(ofClass: UIImage.self) else { continue }

            result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                guard let image = image as? UIImage else { return }

                DispatchQueue.main.async {
                    self.items = self.items + [Defect(title: "title", imageURL: URL(string: "https://example.com")!, image: image)]
                }
            }
        }
    }
}
