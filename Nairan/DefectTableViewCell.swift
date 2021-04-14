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
    @IBOutlet weak var detailLabel: UILabel!
    
    func configure(item: Defect) {
        titleLabel.text = item.title
        detailLabel.text = item.detail

        let options = ImageLoadingOptions(
            placeholder: UIImage(named: "defect"),
            transition: .fadeIn(duration: 0.33)
        )
        Nuke.loadImage(with: item.imageURL, options: options, into: thumbnailImageView)
    }
}
