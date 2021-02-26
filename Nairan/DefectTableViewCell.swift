//
//  AdviceTableViewCell.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import UIKit

class DefectTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    func configure(item: Defect) {
        titleLabel.text = item.title
    }
}
