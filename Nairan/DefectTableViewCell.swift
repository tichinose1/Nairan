//
//  AdviceTableViewCell.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import UIKit
import Nuke

class DefectTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(item: Defect) {
        titleLabel.text = item.title

        if let image = item.image {
            thumbnailImageView.image = image
            return
        }

        let options = ImageLoadingOptions(
            placeholder: UIImage(named: "defect"),
            transition: .fadeIn(duration: 0.33)
        )
        Nuke.loadImage(with: item.imageURL, options: options, into: thumbnailImageView)
    }
}
