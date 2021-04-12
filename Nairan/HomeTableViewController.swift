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

    // MARK: - UITableViewDelegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        let alertController = UIAlertController(title: item.title, message: nil, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "登録", style: .default) { _ in
            guard let textFields = alertController.textFields else { return }

            var newItem = item
            newItem.detail = textFields[0].text!
            self.items[indexPath.row] = newItem
        })
        alertController.addAction(UIAlertAction(title: "キャンセル", style: .cancel, handler: nil))
        alertController.addTextField { textField in
            textField.placeholder = "床が傾いている"
            textField.text = item.detail
        }
        present(alertController, animated: true, completion: nil)
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

        for result in results {
            guard result.itemProvider.canLoadObject(ofClass: UIImage.self) else { continue }

            result.itemProvider.loadObject(ofClass: UIImage.self) { image, error in
                guard let image = image as? UIImage else { return }

                let pngImageData = image.pngData()
                let documentsURL = FileManager.default.urls(for:.libraryDirectory, in:.userDomainMask)[0]
                let fileURL = documentsURL.appendingPathComponent(UUID().uuidString)
                do{
                    try pngImageData!.write(to:fileURL)
                }catch{
                }

                DispatchQueue.main.async {
                    self.items = self.items + [
                        Defect(title: "title",
                               imageURL: fileURL,
                               image: nil,
                               detail: ""
                        )
                    ]
                }
            }
        }
    }
}
