//
//  Advice.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import Foundation

struct Defect {
    var title: String
}

extension Defect {
    static var items: [Defect] = [
        Defect(title: "汚れている"),
        Defect(title: "傾いている"),
        Defect(title: "穴があいている")
    ]
}
