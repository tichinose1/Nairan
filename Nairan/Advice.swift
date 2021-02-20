//
//  Advice.swift
//  Nairan
//
//  Created by tichinose1 on 2021/02/20.
//

import Foundation

struct Advice {
    var title: String
}

extension Advice {
    static var items: [Advice] = [
        Advice(title: "汚れている"),
        Advice(title: "傾いている"),
        Advice(title: "穴があいている")
    ]
}
