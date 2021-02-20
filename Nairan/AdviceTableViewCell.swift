//
//  AdviceTableViewCell.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import UIKit

class AdviceTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    func configure(advice: Advice) {
        titleLabel.text = advice.title
    }
}
