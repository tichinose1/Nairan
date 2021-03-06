//
//  AdviceTableViewCell.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import UIKit

class DefectTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(item: Defect) {
        titleLabel.text = item.title

        guard let data = try? Data(contentsOf: item.image) else { return }
        thumbnailImageView.image = UIImage(data: data)
    }
}
